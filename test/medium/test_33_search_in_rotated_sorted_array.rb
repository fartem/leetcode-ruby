# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/33_search_in_rotated_sorted_array'
require 'minitest/autorun'

class SearchInRotatedSortedArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      search33(
        [4, 5, 6, 7, 0, 1, 2],
        0
      )
    )
  end

  def test_default_two
    assert_equal(
      -1,
      search33(
        [4, 5, 6, 7, 0, 1, 2],
        3
      )
    )
  end

  def test_default_three
    assert_equal(
      -1,
      search33(
        [1],
        0
      )
    )
  end
end
