# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1822_sign_of_the_product_of_an_array'
require 'minitest/autorun'

class SignOfTheProductOfAnArrayTest < ::Minitest::Test
  def test_default_one = assert_equal(1, array_sign([-1, -2, -3, -4, 3, 2, 1]))

  def test_default_two = assert_equal(0, array_sign([1, 5, 0, 2, -3]))

  def test_default_three = assert_equal(-1, array_sign([-1, 1, -1, 1, -1]))
end
