# frozen_string_literal: true

# https://leetcode.com/problems/replace-elements-in-an-array/
# @param {Integer[]} nums
# @param {Integer[][]} operations
# @return {Integer[]}
def array_change(nums, operations)
  indices = {}
  (0...nums.size).each { |i| indices[nums[i]] = i }

  operations.each do |operation|
    index = indices[operation[0]]
    nums[index] = operation[1]
    indices.delete(operation[0])
    indices[operation[1]] = index
  end

  nums
end
