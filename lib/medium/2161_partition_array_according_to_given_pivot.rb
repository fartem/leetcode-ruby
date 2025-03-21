# frozen_string_literal: true

# https://leetcode.com/problems/partition-array-according-to-given-pivot/
# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
  result = ::Array.new(nums.size, 0)
  left = 0
  right = nums.size - 1
  i = 0

  while left < right && i < nums.size
    if nums[i] < pivot
      result[left] = nums[i]
      left += 1
    end

    if nums[nums.size - i - 1] > pivot
      result[right] = nums[nums.length - i - 1]
      right -= 1
    end

    i += 1
  end

  while left <= right
    result[left] = pivot
    left += 1
  end

  result
end
