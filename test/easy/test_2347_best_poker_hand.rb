# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2347_best_poker_hand'
require 'minitest/autorun'

class BestPokerHandTest < ::Minitest::Test
  def test_default
    assert_equal('Flush', best_hand([13, 2, 3, 1, 9], %w[a a a a a]))
    assert_equal('Three of a Kind', best_hand([4, 4, 2, 4, 4], %w[d a a b c]))
    assert_equal('Pair', best_hand([10, 10, 2, 12, 9], %w[a b c a d]))
  end

  def test_additional
    assert_equal('High Card', best_hand([13, 2], %w[a b]))
  end
end
