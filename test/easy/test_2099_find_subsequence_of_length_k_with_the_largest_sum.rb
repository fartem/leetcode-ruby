# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2099_find_subsequence_of_length_k_with_the_largest_sum'
require 'minitest/autorun'

class FindSubsequenceOfLengthKWithTheLargestSumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 3],
      max_subsequence(
        [2, 1, 3, 3],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      [-1, 3, 4],
      max_subsequence(
        [-1, -2, 3, 4],
        3
      )
    )
  end

  def test_default_three
    assert_equal(
      [4, 3],
      max_subsequence(
        [3, 4, 3, 3],
        2
      )
    )
  end
end
