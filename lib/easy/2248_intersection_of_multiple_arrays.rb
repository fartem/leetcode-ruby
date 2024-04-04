# frozen_string_literal: true

# https://leetcode.com/problems/intersection-of-multiple-arrays/
# @param {Integer[][]} nums
# @return {Integer[]}
def intersection2248(nums)
  nums_with_count = {}
  result = []
  nums.each do |values|
    values.each do |num|
      count = nums_with_count.fetch(num, 0) + 1
      nums_with_count[num] = count
      result << num if count == nums.length
    end
  end

  result.sort
end
