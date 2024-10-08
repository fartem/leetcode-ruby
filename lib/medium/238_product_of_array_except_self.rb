# frozen_string_literal: true

# https://leetcode.com/problems/product-of-array-except-self/
# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  mul = 1
  zeros = 0

  nums.each do |num|
    zeros += num.zero? ? 1 : 0
    mul *= num.zero? ? 1 : num
  end

  return ::Array.new(nums.length, 0) if zeros > 1

  (0...nums.length).each do |i|
    num = nums[i]
    nums[i] =
      if zeros.zero?
        nums[i] = mul / num
      else
        num.zero? ? mul : 0
      end
  end

  nums
end
