# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/976_largest_perimeter_triangle'
require 'minitest/autorun'

class LargestPerimeterTriangleTest < ::Minitest::Test
  def test_default_one = assert_equal(5, largest_perimeter([2, 1, 2]))

  def test_default_two = assert_equal(0, largest_perimeter([1, 2, 1, 10]))
end
