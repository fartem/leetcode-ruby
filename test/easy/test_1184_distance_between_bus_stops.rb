# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1184_distance_between_bus_stops'
require 'minitest/autorun'

class DistanceBetweenBusStopsTest < ::Minitest::Test
  def test_default
    assert_equal(1, distance_between_bus_stops([1, 2, 3, 4], 0, 1))
    assert_equal(3, distance_between_bus_stops([1, 2, 3, 4], 0, 2))
    assert_equal(4, distance_between_bus_stops([1, 2, 3, 4], 0, 3))
  end
end
