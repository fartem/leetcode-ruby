# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1725_number_of_rectangles_that_can_form_the_largest_square'
require 'minitest/autorun'

class NumberOfRectanglesThatCanFormTheLargestSquareTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      count_good_rectangles(
        [
          [5, 8],
          [3, 9],
          [5, 12],
          [16, 5]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      count_good_rectangles(
        [
          [2, 3],
          [3, 7],
          [4, 3],
          [3, 7]
        ]
      )
    )
  end
end
