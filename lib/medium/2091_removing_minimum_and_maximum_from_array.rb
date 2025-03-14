# frozen_string_literal: true

# https://leetcode.com/problems/removing-minimum-and-maximum-from-array/
# @param {Integer[]} nums
# @return {Integer}
def minimum_deletions(nums)
  size = nums.size
  min_index = 0
  max_index = 0

  (1...size).each do |i|
    num = nums[i]
    max_index = i if num > nums[max_index]
    min_index = i if num < nums[min_index]
  end

  a = [min_index, max_index].max + 1
  b = size - [min_index, max_index].min
  c = min_index > max_index ? max_index + 1 + size - min_index : min_index + 1 + size - max_index

  [a, b, c].min
end
