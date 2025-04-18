# frozen_string_literal: true

# https://leetcode.com/problems/find-the-integer-added-to-array-i/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def added_integer(nums1, nums2)
  sum1 = nums1.sum
  sum2 = nums2.sum
  diff = sum2 - sum1

  diff / nums1.size
end
