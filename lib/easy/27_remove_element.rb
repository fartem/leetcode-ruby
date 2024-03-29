# frozen_string_literal: true

# https://leetcode.com/problems/remove-element/
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  result = -1
  (0..nums.length).each do |i|
    nums[result += 1] = nums[i] if nums[i] != val
  end

  result
end
