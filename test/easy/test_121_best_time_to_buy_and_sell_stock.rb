# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/121_best_time_to_buy_and_sell_stock'
require 'minitest/autorun'

class BestTimeToBuyAndSellStockTest < ::Minitest::Test
  def test_default_one = assert_equal(5, max_profit([7, 1, 5, 3, 6, 4]))

  def test_default_two = assert_equal(0, max_profit([7, 6, 4, 3, 1]))
end
