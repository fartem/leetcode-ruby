# frozen_string_literal: true

# https://leetcode.com/problems/search-insert-position/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return nums.length if nums.last < target

  left = 0
  right = nums.length
  while left < right
    m = left + (right - left) / 2
    if nums[m] < target
      left += 1
    else
      right -= 1
    end
  end
  left
end
