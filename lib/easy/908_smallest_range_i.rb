# frozen_string_literal: true

# https://leetcode.com/problems/smallest-range-i/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_range_i(nums, k)
  nums.sort!
  min = nums.first
  max = nums.last
  abs = k.abs

  max - abs < min + abs ? 0 : max - min - 2 * abs
end
