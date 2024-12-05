# frozen_string_literal: true

# https://leetcode.com/problems/continuous-subarray-sum/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def check_subarray_sum(nums, k)
  sum = 0
  seen = ::Set.new
  nums.each do |num|
    rem = (sum + num) % k

    return true if seen.include?(rem)

    seen << sum
    sum = rem
  end

  false
end
