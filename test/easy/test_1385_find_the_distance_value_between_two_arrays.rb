# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1385_find_the_distance_value_between_two_arrays'
require 'minitest/autorun'

class FindTheDistanceValueBetweenTwoArraysTest < ::Minitest::Test
  def test_default
    assert_equal(2, find_the_distance_value([4, 5, 8], [10, 9, 1, 8], 2))
    assert_equal(2, find_the_distance_value([1, 4, 2, 3], [-4, -3, 6, 10, 20, 30], 3))
    assert_equal(1, find_the_distance_value([2, 1, 100, 3], [-5, -2, 10, -3, 7], 6))
  end
end
