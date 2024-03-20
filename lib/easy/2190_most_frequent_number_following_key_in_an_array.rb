# frozen_string_literal: true

# https://leetcode.com/problems/most-frequent-number-following-key-in-an-array/
# @param {Integer[]} nums
# @param {Integer} key
# @return {Integer}
def most_frequent(nums, key)
  candidates = {}
  max = 0
  (0..nums.length).each do |i|
    next unless nums[i] == key

    num = nums[i + 1]
    count = candidates.fetch(num, 0) + 1
    candidates[num] = count
    max = [max, count].max
  end

  candidates.each do |k, value|
    return k if value == max
  end

  -1
end
