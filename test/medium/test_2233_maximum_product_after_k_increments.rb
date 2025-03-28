# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2233_maximum_product_after_k_increments'
require 'minitest/autorun'

class MaximumProductAfterKIncrementsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      20,
      maximum_product2233(
        [0, 4],
        5
      )
    )
  end

  def test_default_two
    assert_equal(
      216,
      maximum_product2233(
        [6, 3, 3, 2],
        2
      )
    )
  end
end
