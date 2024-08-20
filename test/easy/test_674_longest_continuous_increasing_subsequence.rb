# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/674_longest_continuous_increasing_subsequence'
require 'minitest/autorun'

class LongestContinuousIncreasingSubsequenceTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      find_length_of_lcis(
        [1, 3, 5, 4, 7]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      find_length_of_lcis(
        [2, 2, 2, 2, 2]
      )
    )
  end
end
