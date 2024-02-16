# frozen_string_literal: true

# https://leetcode.com/problems/maximum-average-subarray-i/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  sum = (0...k).sum { |i| nums[i] }.to_f

  result = sum
  (k...nums.length).each do |i|
    sum += (nums[i] - nums[i - k])
    result = [result, sum].max
  end

  result / k
end
