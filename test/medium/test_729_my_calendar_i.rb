# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/729_my_calendar_i'
require 'minitest/autorun'

class MyCalendarITest < ::Minitest::Test
  def test_default_one
    my_calendar = ::MyCalendar.new

    assert(my_calendar.book(10, 20))
    assert(!my_calendar.book(15, 25))
    assert(my_calendar.book(20, 30))
  end
end
