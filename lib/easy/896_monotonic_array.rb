# frozen_string_literal: true

# https://leetcode.com/problems/monotonic-array/
# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
  inc = true
  dec = true
  (0...nums.length - 1).each do |i|
    dec = false if nums[i] > nums[i + 1]
    inc = false if nums[i] < nums[i + 1]

    break if !inc && !dec
  end

  inc || dec
end
