# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/make-array-zero-by-subtracting-equal-amounts/
# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
  nums.select(&:positive?).to_set.length
end
