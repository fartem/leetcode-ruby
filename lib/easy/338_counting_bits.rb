# frozen_string_literal: true

# https://leetcode.com/problems/counting-bits/
# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  result = []
  (0..n).step(1) do |i|
    count = 0
    count += i & 1 and i >>= 1 until i.zero?
    result << count
  end

  result
end
