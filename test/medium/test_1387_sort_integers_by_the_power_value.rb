# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1387_sort_integers_by_the_power_value'
require 'minitest/autorun'

class SortIntegersByThePowerValueTest < ::Minitest::Test
  def test_default_one = assert_equal(13, get_kth(12, 15, 2))

  def test_default_two = assert_equal(7, get_kth(7, 11, 4))
end
