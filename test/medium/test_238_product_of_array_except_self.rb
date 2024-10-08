# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/238_product_of_array_except_self'
require 'minitest/autorun'

class ProductOfArrayExceptSelfTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [24, 12, 8, 6],
      product_except_self(
        [1, 2, 3, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 0, 9, 0, 0],
      product_except_self(
        [-1, 1, 0, -3, 3]
      )
    )
  end
end
