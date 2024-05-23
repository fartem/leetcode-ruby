# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/largest-positive-integer-that-exists-with-its-negative/
# @param {Integer[]} nums
# @return {Integer}
def find_max_k(nums)
  nums.sort!
  set = nums.to_set

  nums.reverse_each do |num|
    break unless num.positive?

    return num if set.include?(-num)
  end

  -1
end
