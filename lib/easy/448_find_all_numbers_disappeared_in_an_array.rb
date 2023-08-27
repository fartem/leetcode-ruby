# frozen_string_literal: true

# https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  i = 0
  while i < nums.length
    curr = nums[i]
    pos = curr - 1
    if curr == nums[pos]
      i += 1
    else
      nums[i] = nums[pos]
      nums[pos] = curr
    end
  end

  result = []
  (0...nums.length).each do |j|
    result << j + 1 if nums[j] != j + 1
  end

  result
end
