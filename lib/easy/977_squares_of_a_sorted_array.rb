# frozen_string_literal: true

# https://leetcode.com/problems/squares-of-a-sorted-array/
# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  nums.map { |num| num * num }.sort
end
