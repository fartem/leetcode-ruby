# frozen_string_literal: true

# https://leetcode.com/problems/most-frequent-even-element/
# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
  map = {}
  max = 0
  nums.each do |num|
    next unless num.even?

    map[num] = map.fetch(num, 0) + 1
    max = [max, map[num]].max
  end

  return -1 if max.zero?

  result = 1_000_000_000_000_000
  map.each { |key, value| result = [result, key].min if value == max }

  result
end
