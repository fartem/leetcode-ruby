# frozen_string_literal: true

# https://leetcode.com/problems/combination-sum-iv/
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
  find(nums, ::Array.new(target + 1, -1), target)
end

private

# @param {Integer[]} nums
# @param {Integer[]} memo
# @param {Integer} target
# @return {Integer}
def find(nums, memo, target)
  return 1 if target.zero?

  return 0 if target.negative?

  if memo[target] == -1
    memo[target] = 0
    nums.each { |num| memo[target] += find(nums, memo, target - num) }
  end

  memo[target]
end
