# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/735_asteroid_collision'
require 'minitest/autorun'

class AsteroidCollisionTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [5, 10],
      asteroid_collision(
        [5, 10, -5]
      )
    )
  end

  def test_default_two
    assert_equal(
      [],
      asteroid_collision(
        [8, -8]
      )
    )
  end

  def test_default_three
    assert_equal(
      [10],
      asteroid_collision(
        [10, 2, -5]
      )
    )
  end
end
