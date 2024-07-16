# frozen_string_literal: true

# https://leetcode.com/problems/maximum-subarray/
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = nums.first
  curr = max
  nums.drop(1).each do |num|
    curr = [curr + num, num].max
    max = [curr, max].max
  end

  max
end
