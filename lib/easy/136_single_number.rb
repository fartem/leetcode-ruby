# frozen_string_literal: true

# https://leetcode.com/problems/single-number/
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.tally.find { |_key, value| value == 1 }&.first
end
