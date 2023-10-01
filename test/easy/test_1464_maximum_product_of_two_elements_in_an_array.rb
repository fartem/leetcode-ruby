# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1464_maximum_product_of_two_elements_in_an_array'
require 'minitest/autorun'

class MaximumProductOfTwoElementsInAnArrayTest < ::Minitest::Test
  def test_default
    assert_equal(12, max_product([3, 4, 5, 2]))
    assert_equal(16, max_product([1, 5, 4, 5]))
    assert_equal(12, max_product([3, 7]))
  end
end
