# frozen_string_literal: true

# https://leetcode.com/problems/minimum-moves-to-equal-array-elements-ii/
# @param {Integer[]} nums
# @return {Integer}
def min_moves2(nums)
  nums.sort!
  n = nums.size
  m = (n % 2).zero? ? (nums[n / 2] + nums[n / 2 - 1]) / 2 : nums[n / 2]

  nums.sum { |num| (m - num).abs }
end
