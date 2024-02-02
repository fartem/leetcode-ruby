# frozen_string_literal: true

# https://leetcode.com/problems/convert-1d-array-into-2d-array/
# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
  return [] unless original.length == m * n

  original.each_slice(n).to_a
end
