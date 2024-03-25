# frozen_string_literal: true

# https://leetcode.com/problems/count-hills-and-valleys-in-an-array/
# @param {Integer[]} nums
# @return {Integer}
def count_hill_valley(nums)
  result = 0
  (1...(nums.length - 1)).each do |i|
    num = nums[i]

    next if num == nums[i - 1]

    p_left = i - 1
    p_left -= 1 while p_left.positive? && nums[p_left] == num

    next if num == nums[p_left]

    p_right = i + 1
    p_right += 1 while p_right < nums.length - 1 && nums[p_right] == num

    left = nums[p_left]
    right = nums[p_right]

    result += (num < left && num < right) || (num > left && num > right) ? 1 : 0
  end

  result
end
