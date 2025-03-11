# frozen_string_literal: true

# https://leetcode.com/problems/find-the-kth-largest-integer-in-the-array/
# @param {String[]} nums
# @param {Integer} k
# @return {String}
def kth_largest_number(nums, k)
  nums.sort_by! { |str| [str.size, str] }

  nums[-k]
end
