# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/581_shortest_unsorted_continuous_subarray'
require 'minitest/autorun'

class ShortestUnsortedContinuousSubarrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      5,
      find_unsorted_subarray(
        [2, 6, 4, 8, 10, 9, 15]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      find_unsorted_subarray(
        [1, 2, 3, 4]
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      find_unsorted_subarray(
        [1]
      )
    )
  end
end
