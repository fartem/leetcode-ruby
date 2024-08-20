# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2485_find_the_pivot_integer'
require 'minitest/autorun'

class FindThePivotIntegerTest < ::Minitest::Test
  def test_default_one = assert_equal(6, pivot_integer(8))

  def test_default_two = assert_equal(1, pivot_integer(1))

  def test_default_three = assert_equal(-1, pivot_integer(4))
end
