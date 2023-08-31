# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1185_day_of_the_week'
require 'minitest/autorun'

class DayOfTheWeekTest < ::Minitest::Test
  def test_default
    assert_equal('Saturday', day_of_the_week(31, 8, 2019))
    assert_equal('Sunday', day_of_the_week(18, 7, 1999))
    assert_equal('Sunday', day_of_the_week(15, 8, 1993))
  end
end
