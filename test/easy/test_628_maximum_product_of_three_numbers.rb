# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/628_maximum_product_of_three_numbers'
require 'minitest/autorun'

class MaximumProductOfThreeNumbersTest < ::Minitest::Test
  def test_default_one = assert_equal(6, maximum_product([1, 2, 3]))

  def test_default_two = assert_equal(24, maximum_product([1, 2, 3, 4]))

  def test_default_three = assert_equal(-6, maximum_product([-1, -2, -3]))
end
