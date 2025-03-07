# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1845_seat_reservation_manager'
require 'minitest/autorun'

class SeatReservationManagerTest < ::Minitest::Test
  def test_default_one
    seat_manager = ::SeatManager.new(5)

    assert_equal(1, seat_manager.reserve)
    assert_equal(2, seat_manager.reserve)

    seat_manager.unreserve(2)

    assert_equal(2, seat_manager.reserve)
    assert_equal(3, seat_manager.reserve)
    assert_equal(4, seat_manager.reserve)
    assert_equal(5, seat_manager.reserve)

    seat_manager.unreserve(5)
  end
end
