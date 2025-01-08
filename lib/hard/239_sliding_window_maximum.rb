# frozen_string_literal: true

# https://leetcode.com/problems/sliding-window-maximum/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
  result = ::Array.new(nums.size - k + 1)
  p = 0
  i = 0
  j = 0
  arr = []

  while j < nums.size
    arr.pop while !arr.empty? && nums[j] > arr.last

    arr << nums[j]
    size = j - i + 1

    if size >= k
      result[p] = arr.first

      arr.shift if arr.first == nums[i]

      p += 1
      i += 1
    end

    j += 1
  end

  result
end
