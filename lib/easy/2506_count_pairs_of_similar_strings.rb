# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/count-pairs-of-similar-strings/
# @param {String[]} words
# @return {Integer}
def similar_pairs(words)
  map = {}
  result = 0

  (0...words.length).each do |i|
    word = words[i]
    map[word] = word.chars.to_set unless map.key?(word)

    ((i + 1)...words.length).each do |j|
      compare = words[j]
      map[compare] = compare.chars.to_set unless map.key?(compare)

      result += 1 if map[word] == map[compare]
    end
  end

  result
end
