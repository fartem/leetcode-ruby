# frozen_string_literal: true

# https://leetcode.com/problems/smallest-index-with-equal-value/
# @param {Integer[]} nums
# @return {Integer}
def smallest_equal(nums)
  (0...nums.length).each { |i| return i if i % 10 == nums[i] }

  -1
end
