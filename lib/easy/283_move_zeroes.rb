# frozen_string_literal: true

# https://leetcode.com/problems/move-zeroes/
# @param {Integer[]} nums
# @return {Void}
def move_zeroes(nums)
  index = 0
  (0...nums.length).each do |i|
    next if nums[i].zero?

    nums[index] = nums[i]
    index += 1
  end

  (index...nums.length).each { |i| nums[i] = 0 }
end
