# frozen_string_literal: true

# https://leetcode.com/problems/largest-substring-between-two-equal-characters/
# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s)
  result = -1
  chars = {}
  (0...s.length).each do |i|
    c = s[i]

    if chars.include?(c)
      candidate = i - chars[c] - 1

      result = candidate if candidate > result
    else
      chars[c] = i
    end
  end

  result
end
