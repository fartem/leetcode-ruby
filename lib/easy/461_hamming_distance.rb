# frozen_string_literal: true

# https://leetcode.com/problems/hamming-distance/
# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  result = 0
  i = x ^ y
  while i.positive?
    i &= (i - 1)
    result += 1
  end

  result
end
