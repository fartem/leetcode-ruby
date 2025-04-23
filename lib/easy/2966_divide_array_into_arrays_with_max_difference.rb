# frozen_string_literal: true

# https://leetcode.com/problems/divide-array-into-arrays-with-max-difference/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[][]}
def divide_array2966(nums, k)
  nums.sort!
  result = []

  (0...nums.length).step(3) do |i|
    return [] if nums[i + 2] - nums[i] > k

    result << [nums[i], nums[i + 1], nums[i + 2]]
  end

  result
end
