# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/number-of-arithmetic-triplets/
# @param {Integer[]} nums
# @param {Integer} diff
# @return {Integer}
def arithmetic_triplets(nums, diff)
  uniq = nums.to_set
  nums.uniq.sum { |num| uniq.include?(num + diff) && uniq.include?(num + 2 * diff) ? 1 : 0 }
end
