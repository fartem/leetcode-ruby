# frozen_string_literal: true

# https://leetcode.com/problems/largest-number-at-least-twice-of-others/
# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
  max = 0
  result = 0
  nums.each_with_index do |num, i|
    next unless num > max

    max = num
    result = i
  end

  nums.each { |num| return -1 if max != num && max < num * 2 }

  result
end
