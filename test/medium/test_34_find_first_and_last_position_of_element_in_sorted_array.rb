# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/34_find_first_and_last_position_of_element_in_sorted_array'
require 'minitest/autorun'

class SearchInRotatedSortedArrayTest < ::Minitest::Test
  def test_default
    assert_equal([3, 4], search_range([5, 7, 7, 8, 8, 10], 8))
    assert_equal([-1, -1], search_range([5, 7, 7, 8, 8, 10], 6))
    assert_equal([-1, -1], search_range([], 0))
  end
end
