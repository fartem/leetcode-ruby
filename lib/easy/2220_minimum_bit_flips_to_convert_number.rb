# frozen_string_literal: true

# https://leetcode.com/problems/minimum-bit-flips-to-convert-number/
# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
  n = start ^ goal
  result = 0
  while n.positive?
    result += n & 1
    n >>= 1
  end

  result
end
