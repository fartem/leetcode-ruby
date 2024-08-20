# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/933_number_of_recent_calls'
require 'minitest/autorun'

class NumberOfRecentCallsTest < ::Minitest::Test
  def test_default_one
    recent_counter = ::RecentCounter.new

    assert_equal(1, recent_counter.ping(1))
    assert_equal(2, recent_counter.ping(100))
    assert_equal(3, recent_counter.ping(3001))
    assert_equal(3, recent_counter.ping(3002))
  end
end
