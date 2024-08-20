# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1275_find_winner_on_a_tic_tac_toe_game'
require 'minitest/autorun'

class FindWinnerOnATicTacToeGameTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'A',
      tictactoe(
        [
          [0, 0],
          [2, 0],
          [1, 1],
          [2, 1],
          [2, 2]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      'B',
      tictactoe(
        [
          [0, 0],
          [1, 1],
          [0, 1],
          [0, 2],
          [1, 0],
          [2, 0]
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      'Draw',
      tictactoe(
        [
          [0, 0],
          [1, 1],
          [2, 0],
          [1, 0],
          [1, 2],
          [2, 1],
          [0, 1],
          [0, 2],
          [2, 2]
        ]
      )
    )
  end
end
