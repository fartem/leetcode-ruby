# frozen_string_literal: true

# https://leetcode.com/problems/minimum-value-to-get-positive-step-by-step-sum/
# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  start = nums.first
  result = start.positive? ? 1 : -start + 1
  sum = result + start
  (1...nums.length).each do |i|
    num = nums[i]
    if sum + num < 1
      additional = -(sum + num) + 1
      result += additional
      sum += additional
    end

    sum += num
  end

  result
end
