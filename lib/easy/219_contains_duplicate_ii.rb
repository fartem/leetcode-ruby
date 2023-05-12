# frozen_string_literal: true

# https://leetcode.com/problems/contains-duplicate-ii/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  nums_with_indices = {}
  (0..nums.length).step(1) do |i|
    num = nums[i]
    if nums_with_indices.include?(num)
      indices = nums_with_indices[num]
      indices << i
      (0...indices.length - 1).step(1) do |j|
        return true if (indices[j] - indices[j + 1]).abs <= k
      end
      nums_with_indices[num] = indices
    else
      nums_with_indices[num] = [i]
    end
  end
  false
end
