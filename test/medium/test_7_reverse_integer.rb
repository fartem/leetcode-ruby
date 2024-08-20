# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/7_reverse_integer'
require 'minitest/autorun'

class ReverseIntegerTest < ::Minitest::Test
  def test_default_one = assert_equal(321, reverse7(123))

  def test_default_two = assert_equal(-321, reverse7(-123))

  def test_default_three = assert_equal(21, reverse7(120))

  def test_additional_one = assert_equal(0, reverse7(2**31))
end
