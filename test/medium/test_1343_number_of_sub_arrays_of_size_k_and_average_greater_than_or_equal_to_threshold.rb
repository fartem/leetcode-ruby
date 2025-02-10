# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1343_number_of_sub_arrays_of_size_k_and_average_greater_than_or_equal_to_threshold'
require 'minitest/autorun'

class NumberOfSubArraysOfSizeKAndAverageGreaterThanOrEqualToThresholdTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      num_of_subarrays(
        [2, 2, 2, 2, 5, 5, 5, 8],
        3,
        4
      )
    )
  end

  def test_default_two
    assert_equal(
      6,
      num_of_subarrays(
        [11, 13, 17, 23, 29, 31, 7, 5, 2, 3],
        3,
        5
      )
    )
  end
end
