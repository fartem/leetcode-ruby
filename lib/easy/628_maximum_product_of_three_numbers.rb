# frozen_string_literal: true

# https://leetcode.com/problems/maximum-product-of-three-numbers/
# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  nums.sort!
  length = nums.length

  [
    nums[0] * nums[1] * nums[length - 1],
    nums[length - 1] * nums[length - 2] * nums[length - 3]
  ].max
end
