# frozen_string_literal: true

# https://leetcode.com/problems/find-pivot-index/
# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  sum = nums.sum
  at_left = 0

  nums.each_with_index do |num, index|
    return index if at_left == sum - at_left - num

    at_left += num
  end

  -1
end
