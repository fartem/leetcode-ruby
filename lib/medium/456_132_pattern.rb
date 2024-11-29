# frozen_string_literal: true

# https://leetcode.com/problems/132-pattern/
# @param {Integer[]} nums
# @return {Boolean}
def find132pattern(nums)
  third = -::Float::INFINITY
  stack = []
  nums.reverse_each do |num|
    return true if num < third

    third = stack.pop while !stack.empty? && num > stack.last

    stack << num
  end

  false
end
