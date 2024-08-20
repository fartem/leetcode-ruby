# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2210_count_hills_and_valleys_in_an_array'
require 'minitest/autorun'

class CountHillsAndValleysInAnArrayTest < ::Minitest::Test
  def test_default_one = assert_equal(3, count_hill_valley([2, 4, 1, 1, 6, 5]))

  def test_default_two = assert_equal(0, count_hill_valley([6, 6, 5, 5, 4, 1]))
end
