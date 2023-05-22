# frozen_string_literal: true

# https://leetcode.com/problems/missing-number/
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  max = nums.length
  max * (max + 1) / 2 - nums.sum
end
