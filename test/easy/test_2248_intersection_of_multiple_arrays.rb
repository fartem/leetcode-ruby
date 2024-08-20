# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2248_intersection_of_multiple_arrays'
require 'minitest/autorun'

class IntersectionOfMultipleArraysTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 4],
      intersection2248(
        [
          [3, 1, 2, 4, 5],
          [1, 2, 3, 4],
          [3, 4, 5, 6]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [],
      intersection2248(
        [
          [1, 2, 3],
          [4, 5, 6]
        ]
      )
    )
  end
end
