# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2335_minimum_amount_of_time_to_fill_cups'
require 'minitest/autorun'

class MinimumAmountOfTimeToFillCupsTest < ::Minitest::Test
  def test_default
    assert_equal(4, fill_cups([1, 4, 2]))
    assert_equal(7, fill_cups([5, 4, 4]))
    assert_equal(5, fill_cups([5, 0, 0]))
  end
end
