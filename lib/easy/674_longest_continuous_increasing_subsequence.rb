# frozen_string_literal: true

# https://leetcode.com/problems/longest-continuous-increasing-subsequence/
# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  result = 0
  max = 1
  (1...nums.length).each do |i|
    if nums[i - 1] < nums[i]
      max += 1
    else
      result = max if max > result
      max = 1
    end
  end

  [result, max].max
end
