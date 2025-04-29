# frozen_string_literal: true

# https://leetcode.com/problems/find-closest-person/
# @param {Integer} x
# @param {Integer} y
# @param {Integer} z
# @return {Integer}
def find_closest(x, y, z)
  return 0 if (z - x).abs == (z - y).abs

  (z - x).abs < (z - y).abs ? 1 : 2
end
