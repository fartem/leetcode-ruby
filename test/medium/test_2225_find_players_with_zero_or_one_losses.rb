# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2225_find_players_with_zero_or_one_losses'
require 'minitest/autorun'

class FindPlayersWithZeroOrOneLossesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [1, 2, 10],
        [4, 5, 7, 8]
      ],
      find_winners(
        [
          [1, 3],
          [2, 3],
          [3, 6],
          [5, 6],
          [5, 7],
          [4, 5],
          [4, 8],
          [4, 9],
          [10, 4],
          [10, 9]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [1, 2, 5, 6],
        []
      ],
      find_winners(
        [
          [2, 3],
          [1, 3],
          [5, 4],
          [6, 4]
        ]
      )
    )
  end
end
