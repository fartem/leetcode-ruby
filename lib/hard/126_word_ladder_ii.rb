# frozen_string_literal: true

# https://leetcode.com/problems/word-ladder-ii/
# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}
def find_ladders(begin_word, end_word, word_list)
  return [] unless (unvisited = word_list.to_set).include?(end_word)

  transformations = ::Hash.new { |h, k| h[k] = ::Set.new }

  begin_layer = ::Set[begin_word]
  end_layer = ::Set[end_word]
  unvisited.delete(end_word)
  transforms = Array('a'..'z').product(Array(0...begin_word.size))

  current_levels = begin_layer
  previous_levels = end_layer
  loop do
    current_levels, previous_levels = previous_levels, current_levels

    unvisited.subtract(previous_levels)

    next_layer = ::Set.new
    current_levels.each do |word|
      transforms.each do |c, i|
        next if word[i] == c

        transform = word.dup.tap { |w| w[i] = c }

        is_neighbor = unvisited.include?(transform)

        next_layer << transform if is_neighbor

        if is_neighbor || previous_levels.include?(transform)
          if current_levels.equal?(begin_layer)
            transformations[word] << transform
          else
            transformations[transform] << word
          end
        end
      end
    end

    break if next_layer.empty? || begin_layer.any? { |w| transformations[w].intersect?(end_layer) }

    current_levels.replace(next_layer)
  end

  dfs_paths(begin_word, end_word, transformations)
end

private

# @param {String} begin_word
# @param {String} end_word
# @param {Hash} word_graph
# @return {String[][]}
def dfs_paths(begin_word, end_word, word_graph)
  paths = []
  path = []
  stack = [[begin_word, 1]]

  until stack.empty?
    word, level = stack.pop

    path.pop until path.size < level
    path << word

    if word == end_word
      paths << path.dup
    else
      word_graph[word].each { |w| stack << [w, level + 1] }
    end
  end

  paths
end
