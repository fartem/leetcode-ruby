# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/48_rotate_image'
require 'minitest/autorun'

class RotateImageTest < ::Minitest::Test
  def test_default_one
    matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    rotate(matrix)

    assert_equal(
      [
        [7, 4, 1],
        [8, 5, 2],
        [9, 6, 3]
      ],
      matrix
    )
  end

  def test_default_two
    matrix = [
      [5, 1, 9, 11],
      [2, 4, 8, 10],
      [13, 3, 6, 7],
      [15, 14, 12, 16]
    ]
    rotate(matrix)

    assert_equal(
      [
        [15, 13, 2, 5],
        [14, 3, 4, 1],
        [12, 6, 8, 9],
        [16, 7, 10, 11]
      ],
      matrix
    )
  end
end
