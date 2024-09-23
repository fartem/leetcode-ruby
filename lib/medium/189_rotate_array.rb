# frozen_string_literal: true

# https://leetcode.com/problems/rotate-array/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate189(nums, k)
  k.times do
    num = nums.pop
    nums.unshift(num)
  end
end
