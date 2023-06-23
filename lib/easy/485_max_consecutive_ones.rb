# frozen_string_literal: true

# https://leetcode.com/problems/max-consecutive-ones/
# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  result = 0
  counter = 0
  nums.each do |num|
    if num.zero?
      result = [result, counter].max
      counter = 0
    else
      counter += 1
    end
  end

  [result, counter].max
end
