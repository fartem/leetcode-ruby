# frozen_string_literal: true

# https://leetcode.com/problems/maximize-sum-of-array-after-k-negations/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(nums, k)
  nums.sort!
  i = 0
  while i < nums.length && k != 0
    num = nums[i]
    if num.negative?
      nums[i] = -num
      k -= 1
    end

    i += 1
  end

  min = ::Float::INFINITY
  sum = 0
  nums.each do |n|
    sum += n
    min = [min, n].min
  end

  sum - (k % 2) * min * 2
end
