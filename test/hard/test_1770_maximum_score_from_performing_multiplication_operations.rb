# frozen_string_literal: false

require_relative '../test_helper'
require_relative '../../lib/hard/1770_maximum_score_from_performing_multiplication_operations'
require 'minitest/autorun'

class MaximumScoreFromPerformingMultiplicationOperationsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      14,
      maximum_score(
        [1, 2, 3],
        [3, 2, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      102,
      maximum_score(
        [-5, -3, -3, -2, 7, 1],
        [-10, -5, 3, 4, 6]
      )
    )
  end
end
