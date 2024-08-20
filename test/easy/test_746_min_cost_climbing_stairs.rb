# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/746_min_cost_climbing_stairs'
require 'minitest/autorun'

class MinCostClimbingStairsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      15,
      min_cost_climbing_stairs(
        [10, 15, 20]
      )
    )
  end

  def test_default_two
    assert_equal(
      6,
      min_cost_climbing_stairs(
        [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
      )
    )
  end
end
