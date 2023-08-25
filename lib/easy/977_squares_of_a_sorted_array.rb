# frozen_string_literal: true

# https://leetcode.com/problems/squares-of-a-sorted-array/
# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  (0...nums.length).each do |i|
    nums[i] *= nums[i]
  end
  nums.sort!

  nums
end
