# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/871_minimum_number_of_refueling_stops'
require 'minitest/autorun'

class MinimumNumberOfRefuelingStopsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      0,
      min_refuel_stops(
        1,
        1,
        []
      )
    )
  end

  def test_default_two
    assert_equal(
      -1,
      min_refuel_stops(
        100,
        1,
        [
          [10, 100]
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      2,
      min_refuel_stops(
        100,
        10,
        [
          [10, 60],
          [20, 30],
          [30, 30],
          [60, 40]
        ]
      )
    )
  end
end
