# frozen_string_literal: true

# https://leetcode.com/problems/largest-number/
# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  values = nums.map(&:to_s).sort! { |o1, o2| (o2 + o1) <=> (o1 + o2) }

  return '0' if values.first == '0'

  values.join
end
