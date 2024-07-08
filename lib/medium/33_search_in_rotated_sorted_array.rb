# frozen_string_literal: true

# https://leetcode.com/problems/search-in-rotated-sorted-array/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search33(nums, target)
  return 0 if nums.first == target

  s = 0
  e = nums.length - 1
  while s <= e
    m = (s + e) / 2
    f = nums.first
    curr = nums[m]

    return m if curr == target

    if f > curr
      if target < f && target > curr
        s = m + 1
      else
        e = m - 1
      end
    elsif f < target && target < curr
      e = m - 1
    else
      s = m + 1
    end
  end

  -1
end
