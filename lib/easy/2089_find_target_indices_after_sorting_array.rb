# frozen_string_literal: true

# https://leetcode.com/problems/find-target-indices-after-sorting-array/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def target_indices(nums, target)
  nums.sort!.each_index.select { |i| nums[i] == target }
end
