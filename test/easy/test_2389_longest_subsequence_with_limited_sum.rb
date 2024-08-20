# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2389_longest_subsequence_with_limited_sum'
require 'minitest/autorun'

class LongestSubsequenceWithLimitedSumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 3, 4],
      answer_queries(
        [4, 5, 2, 1],
        [3, 10, 21]
      )
    )
  end

  def test_default_two
    assert_equal(
      [0],
      answer_queries(
        [2, 3, 4, 5],
        [1]
      )
    )
  end
end
