# frozen_string_literal: true

# https://leetcode.com/problems/kth-largest-element-in-an-array/description/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k) = nums.max(k).last
