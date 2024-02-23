# frozen_string_literal: true

# https://leetcode.com/problems/find-subsequence-of-length-k-with-the-largest-sum/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
  nums.each_with_index { |num, i| nums[i] = [num, i] }
  nums.sort!
  nums = nums[-k..]
  nums.sort_by!(&:last)

  nums.map(&:first)
end
