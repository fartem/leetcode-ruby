# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/54_spiral_matrix'
require 'minitest/autorun'

class SpiralMatrixTest < ::Minitest::Test
  def test_default
    assert_equal(
      [1, 2, 3, 6, 9, 8, 7, 4, 5],
      spiral_order(
        [
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]
        ]
      )
    )
    assert_equal(
      [1, 2, 3, 4, 8, 12, 11, 10, 9, 5, 6, 7],
      spiral_order(
        [
          [1, 2, 3, 4],
          [5, 6, 7, 8],
          [9, 10, 11, 12]
        ]
      )
    )
  end
end
