# frozen_string_literal: true

# https://leetcode.com/problems/smallest-range-ii/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_range_ii(nums, k)
  nums.sort!
  result = nums[nums.size - 1] - nums[0]

  (0...(nums.size - 1)).each do |i|
    a = nums[i]
    b = nums[i + 1]
    h = [nums[nums.size - 1] - k, a + k].max
    l = [nums[0] + k, b - k].min

    result = [result, h - l].min
  end

  result
end
