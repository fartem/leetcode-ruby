# frozen_string_literal: true

# https://leetcode.com/problems/median-of-two-sorted-arrays/
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  c = nums1 << nums2
  c.flatten!.sort!

  if c.size.even?
    (c[c.size / 2] + c[c.size / 2 - 1]) / 2.0
  else
    c[c.size / 2]
  end
end
