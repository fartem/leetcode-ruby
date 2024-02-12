# frozen_string_literal: true

# https://leetcode.com/problems/single-number/
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  count = nums.each_with_object(::Hash.new(0)) { |elem, acc| acc[elem] += 1 }

  count.find { |_key, value| value == 1 }&.first
end
