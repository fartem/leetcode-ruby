# frozen_string_literal: true

# https://leetcode.com/problems/maximum-nesting-depth-of-two-valid-parentheses-strings/
# @param {String} seq
# @return {Integer[]}
def max_depth_after_split(seq)
  result = ::Array.new(seq.size)

  seq.each_char.with_index do |char, i|
    result[i] = char == '(' ? i & 1 : 1 - (i & 1)
  end

  result
end
