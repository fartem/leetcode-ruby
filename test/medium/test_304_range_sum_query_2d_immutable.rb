# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/304_range_sum_query_2d_immutable'
require 'minitest/autorun'

class RangeSumQuery2DImmutableTest < ::Minitest::Test
  def test_default_one
    num_matrix = ::NumMatrix.new(
      [
        [3, 0, 1, 4, 2],
        [5, 6, 3, 2, 1],
        [1, 2, 0, 1, 5],
        [4, 1, 0, 1, 7],
        [1, 0, 3, 0, 5]
      ]
    )

    assert_equal(8, num_matrix.sum_region(2, 1, 4, 3))
    assert_equal(11, num_matrix.sum_region(1, 1, 2, 2))
    assert_equal(12, num_matrix.sum_region(1, 2, 2, 4))
  end
end
