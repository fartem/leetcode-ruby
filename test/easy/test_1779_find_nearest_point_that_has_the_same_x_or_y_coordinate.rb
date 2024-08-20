# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1779_find_nearest_point_that_has_the_same_x_or_y_coordinate'
require 'minitest/autorun'

class FindNearestPointThatHasTheSameXOrYCoordinateTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      nearest_valid_point(
        3,
        4,
        [
          [1, 2],
          [3, 1],
          [2, 4],
          [2, 3],
          [4, 4]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      nearest_valid_point(
        3,
        4,
        [
          [3, 4]
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      -1,
      nearest_valid_point(
        3,
        4,
        [
          [2, 3]
        ]
      )
    )
  end
end
