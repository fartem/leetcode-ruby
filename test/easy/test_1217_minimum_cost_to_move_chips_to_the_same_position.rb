# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1217_minimum_cost_to_move_chips_to_the_same_position'
require 'minitest/autorun'

class MinimumCostToMoveChipsToTheSamePositionTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      min_cost_to_move_chips(
        [1, 2, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      min_cost_to_move_chips(
        [2, 2, 2, 3, 3]
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      min_cost_to_move_chips(
        [1, 1, 1_000_000_000]
      )
    )
  end
end
