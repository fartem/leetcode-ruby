# frozen_string_literal: true

# https://leetcode.com/problems/minimum-operations-to-make-the-array-increasing/
# @param {Integer[]} nums
# @return {Integer}
def _1827_min_operations(nums)
  result = 0
  curr = nums.first
  (1...nums.length).each do |i|
    num = nums[i]

    if num <= curr
      nxt = curr + 1
      result += nxt - num
      num = nxt
    end

    curr = num
  end

  result
end
