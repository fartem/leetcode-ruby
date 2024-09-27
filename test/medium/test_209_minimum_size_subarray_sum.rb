# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/209_minimum_size_subarray_sum'
require 'minitest/autorun'

class MinimumSizeSubarraySumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      min_sub_array_len(
        7,
        [2, 3, 1, 2, 4, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      min_sub_array_len(
        4,
        [1, 4, 4]
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      min_sub_array_len(
        11,
        [1, 1, 1, 1, 1, 1, 1, 1]
      )
    )
  end
end
