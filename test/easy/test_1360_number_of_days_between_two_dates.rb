# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1360_number_of_days_between_two_dates'
require 'minitest/autorun'

class NumberOfDaysBetweenTwoDatesTest < ::Minitest::Test
  def test_default
    assert_equal(1, days_between_dates('2019-06-29', '2019-06-30'))
    assert_equal(15, days_between_dates('2020-01-15', '2019-12-31'))
  end
end
