# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1071_greatest_common_divisor_of_strings'
require 'minitest/autorun'

class GreatestCommonDivisorOfStringsTest < ::Minitest::Test
  def test_default_one = assert_equal('ABC', gcd_of_strings('ABCABC', 'ABC'))

  def test_default_two = assert_equal('AB', gcd_of_strings('ABABAB', 'ABAB'))

  def test_default_three = assert_equal('', gcd_of_strings('LEET', 'CODE'))
end
