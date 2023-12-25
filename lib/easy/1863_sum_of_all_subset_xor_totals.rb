# frozen_string_literal: true

# https://leetcode.com/problems/sum-of-all-subset-xor-totals/
# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
  bits = 0
  nums.each { |num| bits |= num }

  bits * 2**(nums.length - 1)
end
