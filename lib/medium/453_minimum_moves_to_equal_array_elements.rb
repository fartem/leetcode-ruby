# frozen_string_literal: true

# https://leetcode.com/problems/minimum-moves-to-equal-array-elements/
# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  min = ::Float::INFINITY
  sum = 0
  nums.each do |num|
    min = num if num < min
    sum += num
  end

  sum - nums.size * min
end
