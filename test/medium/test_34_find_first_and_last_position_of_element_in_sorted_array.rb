# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/34_find_first_and_last_position_of_element_in_sorted_array'
require 'minitest/autorun'

class FindFirstAndLastPositionOfElementInSortedArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 4],
      search_range(
        [5, 7, 7, 8, 8, 10],
        8
      )
    )
  end

  def test_default_two
    assert_equal(
      [-1, -1],
      search_range(
        [5, 7, 7, 8, 8, 10],
        6
      )
    )
  end

  def test_default_three
    assert_equal(
      [-1, -1],
      search_range(
        [],
        0
      )
    )
  end
end
