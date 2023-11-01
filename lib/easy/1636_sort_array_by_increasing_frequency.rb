# frozen_string_literal: true

# https://leetcode.com/problems/sort-array-by-increasing-frequency/
# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
  nums
    .tally
    .sort { |a, b| a[1] == b[1] ? b[0] <=> a[0] : a[1] <=> b[1] }
    .sum([]) { |num, freq| [num] * freq }
end
