# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/628_maximum_product_of_three_numbers'
require 'minitest/autorun'

class MaximumProductOfThreeNumbersTest < ::Minitest::Test
  def test_default
    assert_equal(6, maximum_product([1, 2, 3]))
    assert_equal(24, maximum_product([1, 2, 3, 4]))
    assert_equal(-6, maximum_product([-1, -2, -3]))
  end
end
