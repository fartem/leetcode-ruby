# frozen_string_literal: true

# https://leetcode.com/problems/min-max-game/
# @param {Integer[]} nums
# @return {Integer}
def min_max_game(nums)
  return nums.first if nums.length == 1

  nums = nums.each_slice(2).to_a.map.with_index { |a, i| i.even? ? a.min : a.max }
  min_max_game(nums)
end
