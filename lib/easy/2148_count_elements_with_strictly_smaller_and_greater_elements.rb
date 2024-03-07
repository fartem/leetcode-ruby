# frozen_string_literal: true

# https://leetcode.com/problems/count-elements-with-strictly-smaller-and-greater-elements/
# @param {Integer[]} nums
# @return {Integer}
def count_elements(nums)
  min = nums.min
  max = nums.max

  return 0 if min == max

  min_count = nums.count(min)
  max_count = nums.count(max)

  nums.length - min_count - max_count
end
