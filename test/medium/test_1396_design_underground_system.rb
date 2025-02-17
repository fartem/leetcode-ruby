# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1396_design_underground_system'
require 'minitest/autorun'

class DesignUndergroundSystemTest < ::Minitest::Test
  def test_default_one
    underground_system = ::UndergroundSystem.new

    underground_system.check_in(45, 'Leyton', 3)
    underground_system.check_in(32, 'Paradise', 8)
    underground_system.check_in(27, 'Leyton', 10)

    underground_system.check_out(45, 'Waterloo', 15)
    underground_system.check_out(27, 'Waterloo', 20)
    underground_system.check_out(32, 'Cambridge', 22)

    assert_in_delta(
      14.00000,
      underground_system.get_average_time(
        'Paradise',
        'Cambridge'
      )
    )

    assert_in_delta(
      11.00000,
      underground_system.get_average_time(
        'Leyton',
        'Waterloo'
      )
    )

    underground_system.check_in(10, 'Leyton', 24)

    assert_in_delta(
      11.00000,
      underground_system.get_average_time(
        'Leyton',
        'Waterloo'
      )
    )

    underground_system.check_out(10, 'Waterloo', 38)

    assert_in_delta(
      12.00000,
      underground_system.get_average_time(
        'Leyton',
        'Waterloo'
      )
    )
  end

  def test_default_two
    underground_system = ::UndergroundSystem.new

    underground_system.check_in(10, 'Leyton', 3)
    underground_system.check_out(10, 'Paradise', 8)

    assert_in_delta(
      5.00000,
      underground_system.get_average_time(
        'Leyton',
        'Paradise'
      )
    )

    underground_system.check_in(5, 'Leyton', 10)
    underground_system.check_out(5, 'Paradise', 16)

    assert_in_delta(
      5.50000,
      underground_system.get_average_time(
        'Leyton',
        'Paradise'
      )
    )

    underground_system.check_in(2, 'Leyton', 21)
    underground_system.check_out(2, 'Paradise', 30)

    assert_in_delta(
      6.66667,
      underground_system.get_average_time(
        'Leyton',
        'Paradise'
      )
    )
  end
end
