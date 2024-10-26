# frozen_string_literal: true

# https://leetcode.com/problems/find-closest-number-to-zero/
# @param {Integer[]} nums
# @return {Integer}
def find_closest_number(nums)
  min = ::Float::INFINITY
  result = 0
  nums.each do |num|
    abs = num.abs
    if min > abs
      min = abs
      result = num
    elsif min == abs && result < num
      result = num
    end
  end

  result
end
