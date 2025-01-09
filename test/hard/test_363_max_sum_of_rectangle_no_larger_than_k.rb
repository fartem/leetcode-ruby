# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/363_max_sum_of_rectangle_no_larger_than_k'
require 'minitest/autorun'

class MaxSumOfRectangleNoLargerThanKTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      max_sum_submatrix(
        [
          [1, 0, 1],
          [0, -2, 3]
        ],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      max_sum_submatrix(
        [
          [2, 2, -1]
        ],
        3
      )
    )
  end
end
