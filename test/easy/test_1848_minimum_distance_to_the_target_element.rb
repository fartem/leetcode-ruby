# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1848_minimum_distance_to_the_target_element'
require 'minitest/autorun'

class MinimumDistanceToTheTargetElementTest < ::Minitest::Test
  def test_default_one = assert_equal(1, get_min_distance([1, 2, 3, 4, 5], 5, 3))

  def test_default_two = assert_equal(0, get_min_distance([1], 1, 0))

  def test_default_three = assert_equal(0, get_min_distance([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1, 0))
end
