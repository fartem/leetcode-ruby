# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/36_valid_sudoku'
require 'minitest/autorun'

class ValidSudokuTest < ::Minitest::Test
  def test_default
    assert(
      is_valid_sudoku(
        [
          %w[5 3 . . 7 . . . .],
          %w[6 . . 1 9 5 . . .],
          %w[. 9 8 . . . . 6 .],
          %w[8 . . . 6 . . . 3],
          %w[4 . . 8 . 3 . . 1],
          %w[7 . . . 2 . . . 6],
          %w[. 6 . . . . 2 8 .],
          %w[. . . 4 1 9 . . 5],
          %w[. . . . 8 . . 7 9]
        ]
      )
    )
    assert(
      !is_valid_sudoku(
        [
          %w[8 3 . . 7 . . . .],
          %w[6 . . 1 9 5 . . .],
          %w[. 9 8 . . . . 6 .],
          %w[8 . . . 6 . . . 3],
          %w[4 . . 8 . 3 . . 1],
          %w[7 . . . 2 . . . 6],
          %w[. 6 . . . . 2 8 .],
          %w[. . . 4 1 9 . . 5],
          %w[. . . . 8 . . 7 9]
        ]
      )
    )
  end
end
