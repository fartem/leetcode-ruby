# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1630_arithmetic_subarrays'
require 'minitest/autorun'

class ArithmeticSubarraysTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        true,
        false,
        true
      ],
      check_arithmetic_subarrays(
        [4, 6, 5, 9, 3, 7],
        [0, 0, 2],
        [2, 3, 5]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        false,
        true,
        false,
        false,
        true,
        true
      ],
      check_arithmetic_subarrays(
        [-12, -9, -3, -12, -6, 15, 20, -25, -20, -15, -10],
        [0, 1, 6, 4, 8, 7],
        [4, 4, 9, 7, 9, 10]
      )
    )
  end
end
