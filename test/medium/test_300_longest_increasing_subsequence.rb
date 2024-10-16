# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/300_longest_increasing_subsequence'
require 'minitest/autorun'

class LongestIncreasingSubsequenceTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      length_of_lis(
        [10, 9, 2, 5, 3, 7, 101, 18]
      )
    )
  end

  def test_default_two
    assert_equal(
      4,
      length_of_lis(
        [0, 1, 0, 3, 2, 3]
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      length_of_lis(
        [7, 7, 7, 7, 7, 7, 7]
      )
    )
  end
end
