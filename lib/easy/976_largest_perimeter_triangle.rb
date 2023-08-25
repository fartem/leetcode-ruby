# frozen_string_literal: true

# https://leetcode.com/problems/largest-perimeter-triangle/
# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  nums.sort!
  (nums.length - 1).downto(2) do |i|
    a = nums[i - 2]
    b = nums[i - 1]
    c = nums[i]

    return a + b + c if a + b > c
  end

  0
end
