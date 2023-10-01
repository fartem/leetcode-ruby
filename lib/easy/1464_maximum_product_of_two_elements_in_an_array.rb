# frozen_string_literal: true

# https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/
# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  first_max = -999_999_999_999_999
  second_max = -999_999_999_999_999
  nums.each do |num|
    if num > first_max
      temp = first_max
      first_max = num
      second_max = temp
    elsif num > second_max
      second_max = num
    end
  end

  (first_max - 1) * (second_max - 1)
end
