# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/812_largest_triangle_area'
require 'minitest/autorun'

class LargestTriangleAreaTest < ::Minitest::Test
  def test_default
    assert_equal(
      2.00000,
      largest_triangle_area(
        [[0, 0], [0, 1], [1, 0], [0, 2], [2, 0]]
      )
    )
    assert_equal(
      0.50000,
      largest_triangle_area(
        [[1, 0], [0, 0], [0, 1]]
      )
    )
  end
end
