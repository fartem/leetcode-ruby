# frozen_string_literal: false

require_relative '../test_helper'
require_relative '../../lib/hard/1368_minimum_cost_to_make_at_least_one_valid_path_in_a_grid'
require 'minitest/autorun'

class MinimumCostToMakeAtLeastOneValidPathInAGridTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      min_cost(
        [
          [1, 1, 1, 1],
          [2, 2, 2, 2],
          [1, 1, 1, 1],
          [2, 2, 2, 2]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      min_cost(
        [
          [1, 1, 3],
          [3, 2, 2],
          [1, 1, 4]
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      min_cost(
        [
          [1, 2],
          [4, 3]
        ]
      )
    )
  end
end
