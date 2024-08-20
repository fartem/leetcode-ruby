# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2078_two_furthest_houses_with_different_colors'
require 'minitest/autorun'

class TwoFurthestHousesWithDifferentColorsTest < ::Minitest::Test
  def test_default_one = assert_equal(3, max_distance([1, 1, 1, 6, 1, 1, 1]))

  def test_default_two = assert_equal(4, max_distance([1, 8, 3, 8, 3]))

  def test_default_three = assert_equal(1, max_distance([0, 1]))
end
