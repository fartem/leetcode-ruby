# frozen_string_literal: true

# https://leetcode.com/problems/reverse-integer/
# @param {Integer} x
# @return {Integer}
def reverse7(x)
  num = x.to_s.reverse.to_i

  return 0 if num > 2**31 - 1

  x.negative? ? -num : num
end
