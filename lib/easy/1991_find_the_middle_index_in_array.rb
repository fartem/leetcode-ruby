# frozen_string_literal: true

# https://leetcode.com/problems/find-the-middle-index-in-array/
# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
  left_sum = 0
  total_sum = nums.sum
  (0...nums.length).each do |i|
    num = nums[i]
    total_sum -= num

    return i if total_sum == left_sum

    left_sum += num
  end

  -1
end
