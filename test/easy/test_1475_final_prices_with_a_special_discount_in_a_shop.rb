# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1475_final_prices_with_a_special_discount_in_a_shop'
require 'minitest/autorun'

class FinalPricesWithASpecialDiscountInAShopTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [4, 2, 4, 2, 3],
      final_prices(
        [8, 4, 6, 2, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 2, 3, 4, 5],
      final_prices(
        [1, 2, 3, 4, 5]
      )
    )
  end

  def test_default_three
    assert_equal(
      [9, 0, 1, 6],
      final_prices(
        [10, 1, 1, 6]
      )
    )
  end
end
