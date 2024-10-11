# frozen_string_literal: true

# https://leetcode.com/problems/find-the-duplicate-number/
# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  tortoise = nums.first
  hare = nums.first

  loop do
    tortoise = nums[tortoise]
    hare = nums[nums[hare]]

    break if tortoise == hare
  end

  tortoise = nums.first

  until tortoise == hare
    tortoise = nums[tortoise]
    hare = nums[hare]
  end

  hare
end
