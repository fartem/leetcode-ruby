# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1329_sort_the_matrix_diagonally'
require 'minitest/autorun'

class SortTheMatrixDiagonallyTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [1, 1, 1, 1],
        [1, 2, 2, 2],
        [1, 2, 3, 3]
      ],
      diagonal_sort(
        [
          [3, 3, 1, 1],
          [2, 2, 1, 2],
          [1, 1, 1, 2]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [5, 17, 4, 1, 52, 7],
        [11, 11, 25, 45, 8, 69],
        [14, 23, 25, 44, 58, 15],
        [22, 27, 31, 36, 50, 66],
        [84, 28, 75, 33, 55, 68]
      ],
      diagonal_sort(
        [
          [11, 25, 66, 1, 69, 7],
          [23, 55, 17, 45, 15, 52],
          [75, 31, 36, 44, 58, 8],
          [22, 27, 33, 25, 68, 4],
          [84, 28, 14, 11, 5, 50]
        ]
      )
    )
  end
end
