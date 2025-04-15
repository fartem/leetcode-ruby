# frozen_string_literal: true

# https://leetcode.com/problems/minimum-number-game/
# @param {Integer[]} nums
# @return {Integer[]}
def number_game(nums)
  nums.sort!
  result = []

  (0...nums.size).step(2).each do |i|
    result << nums[i + 1]
    result << nums[i]
  end

  result
end
