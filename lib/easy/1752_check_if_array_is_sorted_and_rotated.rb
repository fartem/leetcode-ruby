# frozen_string_literal: true

# https://leetcode.com/problems/check-if-array-is-sorted-and-rotated/
# @param {Integer[]} nums
# @return {Boolean}
def check(nums)
  change = 0
  last = nums.first
  (1...nums.length).each do |i|
    num = nums[i]
    if last > num
      change += 1

      return false if change > 1
    end

    last = num
  end

  return nums[nums.length - 1] <= nums.first if change == 1

  true
end
