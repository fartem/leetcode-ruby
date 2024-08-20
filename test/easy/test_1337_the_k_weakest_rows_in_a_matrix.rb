# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1337_the_k_weakest_rows_in_a_matrix'
require 'minitest/autorun'

class TheKWeakestRowsInAMatrixTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, 0, 3],
      k_weakest_rows(
        [
          [1, 1, 0, 0, 0],
          [1, 1, 1, 1, 0],
          [1, 0, 0, 0, 0],
          [1, 1, 0, 0, 0],
          [1, 1, 1, 1, 1]
        ],
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 2],
      k_weakest_rows(
        [
          [1, 0, 0, 0],
          [1, 1, 1, 1],
          [1, 0, 0, 0],
          [1, 0, 0, 0]
        ],
        2
      )
    )
  end
end
