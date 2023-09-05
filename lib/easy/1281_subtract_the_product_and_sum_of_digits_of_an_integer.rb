# frozen_string_literal: true

# https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  product = 1
  sum = 0
  while n.positive?
    num = n % 10
    product *= num
    sum += num
    n /= 10
  end

  product - sum
end
