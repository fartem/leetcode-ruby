# frozen_string_literal: true

# https://leetcode.com/problems/create-target-array-in-the-given-order/
# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
  result = []
  (0...nums.length).each { |i| result.insert(index[i], nums[i]) }

  result
end
