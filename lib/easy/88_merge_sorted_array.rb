# frozen_string_literal: true

# https://leetcode.com/problems/merge-sorted-array/
# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  i = m - 1
  j = n - 1
  l = m + n - 1
  while l >= 0
    if j.negative? || (i >= 0 && nums1[i] > nums2[j])
      nums1[l] = nums1[i]
      i -= 1
    else
      nums1[l] = nums2[j]
      j -= 1
    end
    l -= 1
  end
end
