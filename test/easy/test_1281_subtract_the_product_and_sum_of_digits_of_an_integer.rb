# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1281_subtract_the_product_and_sum_of_digits_of_an_integer'
require 'minitest/autorun'

class SubtractTheProductAndSumOfDigitsOfAnIntegerTest < ::Minitest::Test
  def test_default_one = assert_equal(15, subtract_product_and_sum(234))

  def test_default_two = assert_equal(21, subtract_product_and_sum(4421))
end
