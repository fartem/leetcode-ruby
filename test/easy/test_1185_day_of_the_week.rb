# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1185_day_of_the_week'
require 'minitest/autorun'

class DayOfTheWeekTest < ::Minitest::Test
  def test_default_one = assert_equal('Saturday', day_of_the_week(31, 8, 2019))

  def test_default_two = assert_equal('Sunday', day_of_the_week(18, 7, 1999))

  def test_default_three = assert_equal('Sunday', day_of_the_week(15, 8, 1993))
end
