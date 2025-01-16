# frozen_string_literal: true

# https://leetcode.com/problems/numbers-with-same-consecutive-differences/
# @param {Integer} n
# @param {Integer} k
# @return {Integer[]}
def nums_same_consec_diff(n, k)
  return (0..9).to_a if n == 1

  nums = []
  (1..9).each { |num| dfs_for_consec_diff(n - 1, num, k, nums) }

  nums
end

private

# @param {Integer} n
# @param {Integer} k
# @param {Integer[]} nums
# @return {Void}
def dfs_for_consec_diff(n, num, k, nums)
  return nums.push(num) if n.zero?

  next_digits = []
  tail = num % 10

  next_digits << tail + k unless k.zero?
  next_digits << tail - k

  next_digits.each do |next_digit|
    next unless (0..9).include?(next_digit)

    new_num = num * 10 + next_digit

    dfs_for_consec_diff(n - 1, new_num, k, nums)
  end
end
