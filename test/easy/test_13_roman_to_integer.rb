require_relative '../../lib/easy/13_roman_to_integer'
require 'minitest/autorun'

class RomanToIntegerTest < Minitest::Test
  def test_default
    assert roman_to_int('III') == 3
    assert roman_to_int('LVIII') == 58
    assert roman_to_int('MCMXCIV') == 1994
  end
end
