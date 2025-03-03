# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-absolute-differences-in-a-sorted-array/
# @param {Integer[]} nums
# @return {Integer[]}
def get_sum_absolute_differences(nums)
  size = nums.size

  (1...size).each { |i| nums[i] += nums[i - 1] }

  result = ::Array.new(size)
  result[0] = nums[size - 1] - size * nums[0]

  (1...size).each do |i|
    left = nums[i - 1]
    right = nums[size - 1] - nums[i]
    current = nums[i] - left

    result[i] = i * current - left + right - (size - i - 1) * current
  end

  result
end
