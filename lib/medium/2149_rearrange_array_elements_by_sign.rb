# frozen_string_literal: true

# https://leetcode.com/problems/rearrange-array-elements-by-sign/
# @param {Integer[]} nums
# @return {Integer[]}
def rearrange_array(nums)
  positives = nums.select(&:positive?)
  negatives = nums.select(&:negative?)
  result = []

  positives.each_with_index do |p, i|
    result << p
    result << negatives[i]
  end

  result
end
