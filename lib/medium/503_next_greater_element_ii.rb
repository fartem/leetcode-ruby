# frozen_string_literal: true

# https://leetcode.com/problems/next-greater-element-ii/
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_elements(nums)
  result = []
  stack = []
  (0...(2 * nums.size)).reverse_each do |i|
    index = i % nums.size

    stack.pop while !stack.empty? && nums[stack.last] <= nums[index]

    result[index] = stack.empty? ? -1 : nums[stack.last]
    stack << index
  end

  result
end
