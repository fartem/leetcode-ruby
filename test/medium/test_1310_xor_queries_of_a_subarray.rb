# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1310_xor_queries_of_a_subarray'
require 'minitest/autorun'

class XorQueriesOfASubarrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 7, 14, 8],
      xor_queries(
        [1, 3, 4, 8],
        [
          [0, 1],
          [1, 2],
          [0, 3],
          [3, 3]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [8, 0, 4, 4],
      xor_queries(
        [4, 8, 2, 10],
        [
          [2, 3],
          [1, 3],
          [0, 0],
          [0, 3]
        ]
      )
    )
  end
end
