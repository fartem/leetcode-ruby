# frozen_string_literal: true

# https://leetcode.com/problems/shuffle-the-array/
# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  result = ::Array.new(nums.length, 0)
  i = j = k = 0
  while k < nums.length
    result[k] = nums[i]
    k += 1
    result[k] = nums[n + j]

    k += 1
    i += 1
    j += 1
  end

  result
end
