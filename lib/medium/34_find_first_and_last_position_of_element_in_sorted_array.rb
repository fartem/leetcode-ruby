# frozen_string_literal: true

# https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  h = nums.length - 1
  s = find_start(nums, target, 0, h)

  return [-1, -1] if s == -1

  e = find_end(nums, target, 0, h)

  [s, e]
end

# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} l
# @param {Integer} h
# @return {Integer}
def find_start(nums, target, l, h)
  return -1 if h < l

  m = l + (h - l) / 2
  num = nums[m]

  return m if (m.zero? || target > nums[m - 1]) && num == target

  target > num ? find_start(nums, target, m + 1, h) : find_start(nums, target, l, m - 1)
end

# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} l
# @param {Integer} h
# @return {Integer}
def find_end(nums, target, l, h)
  return -1 if h < l

  m = l + (h - l) / 2
  num = nums[m]

  return m if (m == nums.length - 1 || target < nums[m + 1]) && num == target

  target < num ? find_end(nums, target, l, m - 1) : find_end(nums, target, m + 1, h)
end
