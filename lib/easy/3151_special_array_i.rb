# frozen_string_literal: true

# https://leetcode.com/problems/special-array-i/
# @param {Integer[]} nums
# @return {Boolean}
def is_array_special(nums)
  return true if nums.size == 1

  (0...nums.size - 1).each do |i|
    return false if nums[i].even? && nums[i + 1].even?

    return false if nums[i].odd? && nums[i + 1].odd?
  end

  true
end
