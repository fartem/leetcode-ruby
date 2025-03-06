# frozen_string_literal: true

# https://leetcode.com/problems/maximum-xor-for-each-query/
# @param {Integer[]} nums
# @param {Integer} maximum_bit
# @return {Integer[]}
def get_maximum_xor(nums, maximum_bit)
  result = ::Array.new(nums.size, 0)
  xor = (1 << maximum_bit) - 1

  (0...nums.size).each do |i|
    xor ^= nums[i]
    result[nums.size - i - 1] = xor
  end

  result
end
