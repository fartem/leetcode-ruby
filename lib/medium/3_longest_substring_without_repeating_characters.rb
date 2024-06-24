# frozen_string_literal: true

# https://leetcode.com/problems/longest-substring-without-repeating-characters/
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  last_index = ::Array.new(256, -1)
  index = 0
  result = 0
  (0...s.length).each do |i|
    c = s[i].ord
    index = [index, last_index[c] + 1].max
    result = [result, i - index + 1].max
    last_index[c] = i
  end

  result
end
