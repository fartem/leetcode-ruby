# frozen_string_literal: true

# https://leetcode.com/problems/intersection-of-two-arrays/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  result = []
  nums1_s = nums1.to_set
  nums2_s = nums2.to_set

  nums1_s.each { |num| result << num if nums2_s.include?(num) }

  result
end
