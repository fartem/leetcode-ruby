# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/4_median_of_two_sorted_arrays'
require 'minitest/autorun'

class MedianOfTwoSortedArraysTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2.00000,
      find_median_sorted_arrays(
        [1, 3],
        [2]
      )
    )
  end

  def test_default_two
    assert_equal(
      2.50000,
      find_median_sorted_arrays(
        [1, 2],
        [3, 4]
      )
    )
  end
end
