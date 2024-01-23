# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1979_find_greatest_common_divisor_of_array'
require 'minitest/autorun'

class FindGreatestCommonDivisorOfArrayTest < ::Minitest::Test
  def test_default
    assert_equal(2, find_gcd([2, 5, 6, 9, 10]))
    assert_equal(1, find_gcd([7, 5, 6, 8, 3]))
    assert_equal(3, find_gcd([3, 3]))
  end
end
