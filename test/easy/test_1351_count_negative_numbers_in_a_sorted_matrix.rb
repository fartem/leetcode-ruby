# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1351_count_negative_numbers_in_a_sorted_matrix'
require 'minitest/autorun'

class CountNegativeNumbersInASortedMatrixTest < ::Minitest::Test
  def test_default
    assert_equal(
      8,
      count_negatives(
        [
          [4, 3, 2, -1],
          [3, 2, 1, -1],
          [1, 1, -1, -2],
          [-1, -1, -2, -3]
        ]
      )
    )
    assert_equal(0, count_negatives([[3, 2], [1, 0]]))
  end
end
