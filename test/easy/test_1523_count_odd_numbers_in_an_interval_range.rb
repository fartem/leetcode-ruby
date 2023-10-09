# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1523_count_odd_numbers_in_an_interval_range'
require 'minitest/autorun'

class CountOddNumbersInAnIntervalRangeTest < ::Minitest::Test
  def test_default
    assert_equal(3, count_odds(3, 7))
    assert_equal(1, count_odds(8, 10))
  end
end
