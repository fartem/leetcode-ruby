# frozen_string_literal: true

# https://leetcode.com/problems/contains-duplicate/
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums.length != nums.to_set.length
end
