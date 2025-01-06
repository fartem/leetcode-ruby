# frozen_string_literal: true

# https://leetcode.com/problems/first-missing-positive/
# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  result = 1
  nums.sort.each { |num| result += 1 if result == num }

  result
end
