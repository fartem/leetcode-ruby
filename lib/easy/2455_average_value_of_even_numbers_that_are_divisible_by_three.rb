# frozen_string_literal: true

# https://leetcode.com/problems/average-value-of-even-numbers-that-are-divisible-by-three/
# @param {Integer[]} nums
# @return {Integer}
def average_value(nums)
  count = 0
  sum = 0

  nums.each do |num|
    next unless (num % 6).zero?

    count += 1
    sum += num
  end

  count.positive? ? sum / count : 0
end
