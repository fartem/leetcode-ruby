# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1154_day_of_the_year'
require 'minitest/autorun'

class DayOfTheYearTest < ::Minitest::Test
  def test_default
    assert_equal(9, day_of_year('2019-01-09'))
    assert_equal(41, day_of_year('2019-02-10'))
  end
end
