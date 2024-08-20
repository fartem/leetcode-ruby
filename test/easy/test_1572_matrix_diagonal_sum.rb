# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1572_matrix_diagonal_sum'
require 'minitest/autorun'

class MatrixDiagonalSumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      25,
      diagonal_sum(
        [
          [1, 2, 3],
          [4, 5, 6],
          [7, 8, 9]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      8,
      diagonal_sum(
        [
          [1, 1, 1, 1],
          [1, 1, 1, 1],
          [1, 1, 1, 1],
          [1, 1, 1, 1]
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      5,
      diagonal_sum(
        [[5]]
      )
    )
  end
end
