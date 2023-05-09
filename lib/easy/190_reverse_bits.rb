# frozen_string_literal: true

# https://leetcode.com/problems/reverse-bits/
# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  bits = n.digits(2)
  bits << 0 while bits.length < 32
  bits.join.to_i(2)
end
