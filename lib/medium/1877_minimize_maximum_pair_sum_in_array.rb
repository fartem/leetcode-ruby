# frozen_string_literal: true

# https://leetcode.com/problems/minimize-maximum-pair-sum-in-array/
# @param {Integer[]} nums
# @return {Integer}
def min_pair_sum(nums)
  nums.sort!
  result = 0

  (0...nums.size / 2).each do |i|
    result = [result, nums[i] + nums[nums.size - i - 1]].max
  end

  result
end
