# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/901_online_stock_span'
require 'minitest/autorun'

class OnlineStockSpanTest < ::Minitest::Test
  def test_default_one
    stock_spanner = ::StockSpanner.new

    assert_equal(1, stock_spanner.next(100))
    assert_equal(1, stock_spanner.next(80))
    assert_equal(1, stock_spanner.next(60))
    assert_equal(2, stock_spanner.next(70))
    assert_equal(1, stock_spanner.next(60))
    assert_equal(4, stock_spanner.next(75))
    assert_equal(6, stock_spanner.next(85))
  end
end
