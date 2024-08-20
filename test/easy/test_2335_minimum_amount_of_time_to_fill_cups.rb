# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2335_minimum_amount_of_time_to_fill_cups'
require 'minitest/autorun'

class MinimumAmountOfTimeToFillCupsTest < ::Minitest::Test
  def test_default_one = assert_equal(4, fill_cups([1, 4, 2]))

  def test_default_two = assert_equal(7, fill_cups([5, 4, 4]))

  def test_default_three = assert_equal(5, fill_cups([5, 0, 0]))
end
