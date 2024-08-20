# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1603_design_parking_system'
require 'minitest/autorun'

class DesignParkingSystemTest < ::Minitest::Test
  def test_default_one
    parking_system = ::ParkingSystem.new(1, 1, 0)

    assert(parking_system.add_car(1))
    assert(parking_system.add_car(2))
    assert(!parking_system.add_car(3))
    assert(!parking_system.add_car(1))
  end

  def test_additional_one
    parking_system = ::ParkingSystem.new(1, 1, 1)

    assert(parking_system.add_car(1))
    assert(parking_system.add_car(2))
    assert(parking_system.add_car(3))
  end
end
