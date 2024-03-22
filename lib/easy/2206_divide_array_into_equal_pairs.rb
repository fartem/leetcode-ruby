# frozen_string_literal: true

# https://leetcode.com/problems/divide-array-into-equal-pairs/
# @param {Integer[]} nums
# @return {Boolean}
def divide_array(nums)
  counts = ::Array.new(501, 0)
  nums.each { |num| counts[num] += 1 }
  counts.each { |count| return false if count.odd? }

  true
end
