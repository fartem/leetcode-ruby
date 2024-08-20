# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/13_roman_to_integer'
require 'minitest/autorun'

class RomanToIntegerTest < ::Minitest::Test
  def test_default_one = assert_equal(3, roman_to_int('III'))

  def test_default_two = assert_equal(58, roman_to_int('LVIII'))

  def test_default_three = assert_equal(1994, roman_to_int('MCMXCIV'))
end
