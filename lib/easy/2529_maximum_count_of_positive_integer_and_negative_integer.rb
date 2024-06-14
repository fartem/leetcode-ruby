# frozen_string_literal: true

# https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
# @param {Integer[]} nums
# @return {Integer}
def maximum_count(nums)
  positive = 0
  negative = 0
  nums.each do |num|
    if num.positive?
      positive += 1
    elsif num.negative?
      negative += 1
    end
  end

  [positive, negative].max
end
