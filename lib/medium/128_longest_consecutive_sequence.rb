# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/longest-consecutive-sequence/
# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  uniq = nums.to_set
  result = 0
  nums.each do |num|
    next if uniq.include?(num - 1)

    curr = num
    count = 1
    while uniq.include?(curr + 1)
      curr += 1
      count += 1
    end

    result = [result, count].max
  end

  result
end
