# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/350_intersection_of_two_arrays_ii'
require 'minitest/autorun'

class IntersectionOfTwoArraysIITest < ::Minitest::Test
  def test_default
    assert_equal(
      [2, 2],
      intersect(
        [1, 2, 2, 1],
        [2, 2]
      )
    )
    assert_equal(
      [9, 4],
      intersect(
        [4, 9, 5],
        [9, 4, 9, 8, 4]
      )
    )
  end
end
