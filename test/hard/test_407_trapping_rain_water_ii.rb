# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/407_trapping_rain_water_ii'
require 'minitest/autorun'

class TrappingRainWaterIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      trap_rain_water(
        [
          [1, 4, 3, 1, 3, 2],
          [3, 2, 1, 3, 2, 4],
          [2, 3, 3, 2, 3, 1]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      10,
      trap_rain_water(
        [
          [3, 3, 3, 3, 3],
          [3, 2, 2, 2, 3],
          [3, 2, 1, 2, 3],
          [3, 2, 2, 2, 3],
          [3, 3, 3, 3, 3]
        ]
      )
    )
  end

  def test_additional_one
    assert_equal(
      3,
      trap_rain_water(
        [
          [5, 5, 5, 1],
          [5, 1, 1, 5],
          [5, 1, 5, 5],
          [5, 2, 5, 8]
        ]
      )
    )
  end
end
