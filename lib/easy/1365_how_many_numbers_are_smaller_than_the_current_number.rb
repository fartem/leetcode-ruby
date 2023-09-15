# frozen_string_literal: true

# https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  original = nums.dup
  nums.sort!
  nums_with_count = {}
  (0...nums.length).each { |i| nums_with_count[nums[i]] = i unless nums_with_count.include?(nums[i]) }
  (0...nums.length).each { |i| original[i] = nums_with_count.fetch(original[i], 0) }

  original
end
