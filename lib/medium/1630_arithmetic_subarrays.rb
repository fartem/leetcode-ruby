# frozen_string_literal: true

# https://leetcode.com/problems/arithmetic-subarrays/
# @param {Integer[]} nums
# @param {Integer[]} l
# @param {Integer[]} r
# @return {Boolean[]}
def check_arithmetic_subarrays(nums, l, r)
  (0...l.size).map { |i| calculate_for_check_arithmetic_subarrays(nums, l[i], r[i]) }
end

private

# @param {Integer[]} nums
# @param {Integer} l
# @param {Integer} r
# @return {Boolean}
def calculate_for_check_arithmetic_subarrays(nums, l, r)
  n = (l...(r + 1)).map { |i| nums[i] }.sort

  (0...(n.size - 1)).each do |i|
    return false unless n[i + 1] - n[i] == n[1] - n[0]
  end

  true
end
