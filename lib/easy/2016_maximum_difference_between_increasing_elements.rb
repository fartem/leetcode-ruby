# frozen_string_literal: true

# https://leetcode.com/problems/maximum-difference-between-increasing-elements/
# @param {Integer[]} nums
# @return {Integer}
def maximum_difference(nums)
  min = nums[0]
  diff = nums[1] - min
  nums.each do |num|
    if num - min > diff
      diff = num - min
    elsif min > num
      min = num
    end
  end

  diff.zero? ? -1 : diff
end
