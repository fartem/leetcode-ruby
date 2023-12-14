# frozen_string_literal: true

# https://leetcode.com/problems/sign-of-the-product-of-an-array/
# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
  positive = 0
  nums.each do |num|
    return 0 if num.zero?

    positive += 1 if num.positive?
  end

  (nums.length - positive).even? ? 1 : -1
end
