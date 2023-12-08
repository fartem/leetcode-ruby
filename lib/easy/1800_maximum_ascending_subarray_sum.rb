# frozen_string_literal: true

# https://leetcode.com/problems/maximum-ascending-subarray-sum/
# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
  max = 0
  sum = nums.first
  (1...nums.length).each do |i|
    num = nums[i]
    prev = nums[i - 1]

    if num <= prev
      max = sum if max < sum
      sum = 0
    end

    sum += num
  end

  [max, sum].max
end
