# frozen_string_literal: true

# https://leetcode.com/problems/running-sum-of-1d-array/
# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  sum = 0
  (0...nums.length).each do |i|
    nums[i] += sum
    sum = nums[i]
  end

  nums
end
