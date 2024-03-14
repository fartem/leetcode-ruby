# frozen_string_literal: true

# https://leetcode.com/problems/count-equal-and-divisible-pairs-in-an-array/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
  result = 0
  (0...nums.length).each do |i|
    f = nums[i]
    ((i + 1)...nums.length).each do |j|
      s = nums[j]

      result += 1 if f == s && ((i * j) % k).zero?
    end
  end

  result
end
