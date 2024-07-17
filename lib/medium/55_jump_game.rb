# frozen_string_literal: true

# https://leetcode.com/problems/jump-game/
# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  reachable = 0
  nums.each_with_index do |n, i|
    return false if i > reachable

    reachable = [(n + i), reachable].max
  end

  reachable >= nums.length - 1
end
