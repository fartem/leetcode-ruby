# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2966_divide_array_into_arrays_with_max_difference'
require 'minitest/autorun'

class DivideArrayIntoArraysWithMaxDifferenceTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [1, 1, 3],
        [3, 4, 5],
        [7, 8, 9]
      ],
      divide_array2966(
        [1, 3, 4, 8, 7, 9, 3, 5, 1],
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      [],
      divide_array2966(
        [2, 4, 2, 2, 5, 2],
        2
      )
    )
  end

  def test_default_three
    assert_equal(
      [
        [2, 2, 2],
        [4, 5, 5],
        [5, 5, 7],
        [7, 8, 8],
        [9, 9, 10],
        [11, 12, 12]
      ],
      divide_array2966(
        [4, 2, 9, 8, 2, 12, 7, 12, 10, 5, 8, 5, 5, 7, 9, 2, 5, 11],
        14
      )
    )
  end
end
