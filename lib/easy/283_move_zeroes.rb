# frozen_string_literal: true

# https://leetcode.com/problems/move-zeroes/
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  index = 0
  (0...nums.length).each do |i|
    unless nums[i].zero?
      nums[index] = nums[i]
      index += 1
    end
  end

  (index...nums.length).each do |i|
    nums[i] = 0
  end
end
