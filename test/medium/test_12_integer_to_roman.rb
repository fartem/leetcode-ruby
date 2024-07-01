# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/12_integer_to_roman'
require 'minitest/autorun'

class IntegerToRomanTest < ::Minitest::Test
  def test_default
    assert_equal('MMMDCCXLIX', int_to_roman(3749))
    assert_equal('LVIII', int_to_roman(58))
    assert_equal('MCMXCIV', int_to_roman(1994))
  end
end
