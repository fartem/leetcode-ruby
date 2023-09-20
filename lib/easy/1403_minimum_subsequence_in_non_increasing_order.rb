# frozen_string_literal: true

# https://leetcode.com/problems/minimum-subsequence-in-non-increasing-order/
# @param {Integer[]} nums
# @return {Integer[]}
def min_subsequence(nums)
  nums.sort!
  sum = nums.sum
  sub = 0
  p = nums.length - 1
  result = []
  while sub <= sum
    num = nums[p]
    p -= 1

    sub += num
    sum -= num

    result << num
  end

  result
end
