# frozen_string_literal: true

# https://leetcode.com/problems/shortest-distance-to-a-character/
# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  result = ::Array.new(s.length, '')

  indexes = []
  (0...s.length).each do |i|
    indexes << i if s[i] == c
  end

  pos = 0
  (0...s.length).each do |i|
    index = indexes[pos]
    first = (index - i).abs

    if pos + 1 < indexes.length
      second_index = indexes[pos + 1]
      second = (second_index - i).abs
      result[i] = [first, second].min
      pos += 1 if first > second
    else
      result[i] = first
    end
  end

  result
end
