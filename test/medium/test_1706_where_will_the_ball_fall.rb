# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1706_where_will_the_ball_fall'
require 'minitest/autorun'

class WhereWillTheBallFallTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, -1, -1, -1, -1],
      find_ball(
        [
          [1, 1, 1, -1, -1],
          [1, 1, 1, -1, -1],
          [-1, -1, -1, 1, 1],
          [1, 1, 1, 1, -1],
          [-1, -1, -1, -1, -1]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [-1],
      find_ball(
        [
          [-1]
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      [0, 1, 2, 3, 4, -1],
      find_ball(
        [
          [1, 1, 1, 1, 1, 1],
          [-1, -1, -1, -1, -1, -1],
          [1, 1, 1, 1, 1, 1],
          [-1, -1, -1, -1, -1, -1]
        ]
      )
    )
  end
end
