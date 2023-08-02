# frozen_string_literal: true

# https://leetcode.com/problems/binary-search/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l = 0
  r = nums.length - 1
  while l <= r
    m = l + (r - l) / 2
    num = nums[m]

    return m if num == target

    if num < target
      l = m + 1
    else
      r = m - 1
    end
  end

  -1
end
