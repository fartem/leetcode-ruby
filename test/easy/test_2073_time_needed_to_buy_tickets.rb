# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2073_time_needed_to_buy_tickets'
require 'minitest/autorun'

class TimeNeededToBuyTicketsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      time_required_to_buy(
        [2, 3, 2],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      8,
      time_required_to_buy(
        [5, 1, 1, 1],
        0
      )
    )
  end
end
