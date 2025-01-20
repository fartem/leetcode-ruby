# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/985_sum_of_even_numbers_after_queries'
require 'minitest/autorun'

class SumOfEvenNumbersAfterQueriesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [8, 6, 2, 4],
      sum_even_after_queries(
        [1, 2, 3, 4],
        [
          [1, 0],
          [-3, 1],
          [-4, 0],
          [2, 3]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [0],
      sum_even_after_queries(
        [1],
        [
          [4, 0]
        ]
      )
    )
  end
end
