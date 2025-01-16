# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/967_numbers_with_same_consecutive_differences'
require 'minitest/autorun'

class NumbersWithSameConsecutiveDifferencesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [181, 292, 707, 818, 929],
      nums_same_consec_diff(3, 7)
    )
  end

  def test_default_two
    assert_equal(
      [12, 10, 23, 21, 34, 32, 45, 43, 56, 54, 67, 65, 78, 76, 89, 87, 98],
      nums_same_consec_diff(2, 1)
    )
  end
end
