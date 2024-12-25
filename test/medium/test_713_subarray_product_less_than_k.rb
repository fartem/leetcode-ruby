# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/713_subarray_product_less_than_k'
require 'minitest/autorun'

class SubarrayProductLessThanKTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      8,
      num_subarray_product_less_than_k(
        [10, 5, 2, 6],
        100
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      num_subarray_product_less_than_k(
        [1, 2, 3],
        0
      )
    )
  end
end
