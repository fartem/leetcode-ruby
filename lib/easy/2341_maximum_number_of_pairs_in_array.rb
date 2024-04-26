# frozen_string_literal: true

# https://leetcode.com/problems/maximum-number-of-pairs-in-array/
# @param {Integer[]} nums
# @return {Integer[]}
def number_of_pairs(nums)
  map = {}
  nums.each { |num| map[num] = map.fetch(num, 0) + 1 }
  pairs = 0
  leftover = 0
  map.each_value do |count|
    pairs += count / 2
    leftover += count % 2
  end

  [pairs, leftover]
end
