# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/349_intersection_of_two_arrays'
require 'minitest/autorun'

class IntersectionOfTwoArraysTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2],
      intersection(
        [1, 2, 2, 1],
        [2, 2]
      )
    )
  end

  def test_default_two
    assert_equal(
      [4, 9],
      intersection(
        [4, 9, 5],
        [9, 4, 9, 8, 4]
      )
    )
  end
end
