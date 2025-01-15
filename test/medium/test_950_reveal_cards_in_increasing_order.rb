# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/950_reveal_cards_in_increasing_order'
require 'minitest/autorun'

class RevealCardsInIncreasingOrderTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 13, 3, 11, 5, 17, 7],
      deck_revealed_increasing(
        [17, 13, 11, 2, 3, 5, 7]
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 1000],
      deck_revealed_increasing(
        [1, 1000]
      )
    )
  end
end
