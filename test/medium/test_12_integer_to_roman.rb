# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/12_integer_to_roman'
require 'minitest/autorun'

class IntegerToRomanTest < ::Minitest::Test
  def test_default_one = assert_equal('MMMDCCXLIX', int_to_roman(3749))

  def test_default_two = assert_equal('LVIII', int_to_roman(58))

  def test_default_three = assert_equal('MCMXCIV', int_to_roman(1994))
end
