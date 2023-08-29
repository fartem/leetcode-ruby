# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1071_greatest_common_divisor_of_strings'
require 'minitest/autorun'

class GreatestCommonDivisorOfStringsTest < ::Minitest::Test
  def test_default
    assert_equal('ABC', gcd_of_strings('ABCABC', 'ABC'))
    assert_equal('AB', gcd_of_strings('ABABAB', 'ABAB'))
    assert_equal('', gcd_of_strings('LEET', 'CODE'))
  end
end
