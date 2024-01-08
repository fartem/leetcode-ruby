# frozen_string_literal: true

# https://leetcode.com/problems/build-array-from-permutation/
# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
  result = ::Array.new(nums.length)
  (0...nums.length).each do |i|
    result[i] = nums[nums[i]]
  end

  result
end
