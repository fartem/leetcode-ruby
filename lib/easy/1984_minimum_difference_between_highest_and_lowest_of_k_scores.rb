# frozen_string_literal: true

# https://leetcode.com/problems/minimum-difference-between-highest-and-lowest-of-k-scores/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def minimum_difference(nums, k)
  return 0 if k == 1

  nums.sort!
  result = 1_000_000_000_000
  ((k - 1)...nums.length).each do |i|
    result = [result, nums[i] - nums[i - k + 1]].min
  end

  result
end
