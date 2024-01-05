# frozen_string_literal: true

# https://leetcode.com/problems/maximum-product-difference-between-two-pairs/
# @param {Integer[]} nums
# @return {Integer}
def max_product_difference(nums)
  nums.sort!
  l = nums.length

  (nums[l - 1] * nums[l - 2]) - (nums[0] * nums[1])
end
