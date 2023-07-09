# frozen_string_literal: true

# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min = prices.first
  max = 0
  (1...prices.length).step(1) do |i|
    price = prices[i]
    max = [price - min, max].max
    min = [price, min].min
  end

  max
end
