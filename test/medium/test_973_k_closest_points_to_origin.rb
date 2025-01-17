# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/973_k_closest_points_to_origin'
require 'minitest/autorun'

class KClosestPointsToOriginTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [-2, 2]
      ],
      k_closest(
        [
          [1, 3],
          [-2, 2]
        ],
        1
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [3, 3],
        [-2, 4]
      ],
      k_closest(
        [
          [3, 3],
          [5, -1],
          [-2, 4]
        ],
        2
      )
    )
  end
end
