# frozen_string_literal: true

# https://leetcode.com/problems/sort-colors/
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  l = 0
  m = 0
  h = nums.length - 1

  while m <= h
    if nums[m].zero?
      swap(nums, m, l)
      m += 1
      l += 1
    elsif nums[m] == 1
      m += 1
    else
      swap(nums, m, h)
      h -= 1
    end
  end
end

private

# @param {Integer[]} nums
# @param {Integer} f
# @param {Integer} s
# @return {Void}
def swap(nums, f, s)
  temp = nums[f]
  nums[f] = nums[s]
  nums[s] = temp
end
