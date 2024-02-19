# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2078_two_furthest_houses_with_different_colors'
require 'minitest/autorun'

class TwoFurthestHousesWithDifferentColorsTest < ::Minitest::Test
  def test_default
    assert_equal(3, max_distance([1, 1, 1, 6, 1, 1, 1]))
    assert_equal(4, max_distance([1, 8, 3, 8, 3]))
    assert_equal(1, max_distance([0, 1]))
  end
end
