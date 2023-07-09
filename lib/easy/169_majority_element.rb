# frozen_string_literal: true

# https://leetcode.com/problems/majority-element/
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.sort!
  nums[nums.length / 2]
end
