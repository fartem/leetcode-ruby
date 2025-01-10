# frozen_string_literal: true

# https://leetcode.com/problems/online-stock-span/
class StockSpanner
  # Init
  def initialize
    @stack = []
  end

  # @param {Integer} price
  # @return {Integer}
  def next(price)
    result = 1
    result += @stack.delete_at(@stack.size - 1)[1] while !@stack.empty? && @stack.last[0] <= price
    @stack << [price, result]

    result
  end
end
