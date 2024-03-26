# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/find-the-difference-of-two-arrays/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
  values1 = nums1.to_set
  values2 = nums2.to_set

  first = values1.reject { |val| values2.include?(val) }
  second = values2.reject { |val| values1.include?(val) }

  [first, second]
end
