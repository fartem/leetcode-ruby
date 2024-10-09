# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/240_search_a_2d_matrix_ii'
require 'minitest/autorun'

class SearchA2DMatrixIITest < ::Minitest::Test
  def test_default_one
    assert(
      search_matrix240(
        [
          [1, 4, 7, 11, 15],
          [2, 5, 8, 12, 19],
          [3, 6, 9, 16, 22],
          [10, 13, 14, 17, 24],
          [18, 21, 23, 26, 30]
        ],
        5
      )
    )
  end

  def test_default_two
    assert(
      !search_matrix240(
        [
          [1, 4, 7, 11, 15],
          [2, 5, 8, 12, 19],
          [3, 6, 9, 16, 22],
          [10, 13, 14, 17, 24],
          [18, 21, 23, 26, 30]
        ],
        20
      )
    )
  end
end
