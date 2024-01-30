# frozen_string_literal: true

# https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_k_difference(nums, k)
  result = 0
  (0...nums.length).each do |i|
    (i...nums.length).each do |j|
      result += 1 if (nums[i] - nums[j]).abs == k
    end
  end

  result
end
