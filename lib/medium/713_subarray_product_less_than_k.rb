# frozen_string_literal: true

# https://leetcode.com/problems/subarray-product-less-than-k/
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
  return 0 if k <= 1

  result = 0
  prod = 1
  left = 0
  (0...nums.size).each do |right|
    prod *= nums[right]
    while prod >= k
      prod /= nums[left]
      left += 1
    end
    result += right - left + 1
  end

  result
end
