# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1557_minimum_number_of_vertices_to_reach_all_nodes'
require 'minitest/autorun'

class MinimumNumberOfVerticesToReachAllNodesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 3],
      find_smallest_set_of_vertices(
        6,
        [
          [0, 1],
          [0, 2],
          [2, 5],
          [3, 4],
          [4, 2]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 2, 3],
      find_smallest_set_of_vertices(
        5,
        [
          [0, 1],
          [2, 1],
          [3, 1],
          [1, 4],
          [2, 4]
        ]
      )
    )
  end
end
