# frozen_string_literal: true

require 'set'

# https://leetcode.com/problems/kth-missing-positive-number/
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
  nums = arr.to_set
  skipped = 0
  max = [arr[arr.length - 1], arr.length + k + 1].max
  (0...max).each do |i|
    next if nums.include?(i)

    return i if skipped == k

    skipped += 1
  end
end
