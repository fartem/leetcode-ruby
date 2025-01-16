# frozen_string_literal: true

# https://leetcode.com/problems/bitwise-xor-of-all-pairings/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def xor_all_nums(nums1, nums2)
  c1 = nums1.size
  c2 = nums2.size

  x1 = 0
  x2 = 0

  nums2.each { |num| x2 ^= num } if c1.odd?

  nums1.each { |num| x1 ^= num } if c2.odd?

  x1 ^ x2
end
