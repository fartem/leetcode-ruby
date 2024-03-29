# frozen_string_literal: true

# https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/
# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  (0...prices.length).each do |i|
    ((i + 1)...prices.length).each do |j|
      price = prices[i]
      discount = prices[j]

      next if price < discount

      prices[i] = price - discount

      break
    end
  end

  prices
end
