# frozen_string_literal: true

# https://leetcode.com/problems/minimum-time-to-type-word-using-special-typewriter/
# @param {String} word
# @return {Integer}
def min_time_to_type(word)
  result = 0
  last = 97
  word.each_byte do |b|
    c = (last - b).abs
    c_w = ((122 - [b, last].max) + ([b, last].min - 97)) + 1
    result += [c, c_w].min + 1
    last = b
  end

  result
end
