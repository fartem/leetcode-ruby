# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/74_search_a_2d_matrix'
require 'minitest/autorun'

class SearchA2DMatrixTest < ::Minitest::Test
  def test_default_one
    assert(
      search_matrix(
        [
          [1, 3, 5, 7],
          [10, 11, 16, 20],
          [23, 30, 34, 60]
        ],
        3
      )
    )
  end

  def test_default_two
    assert(
      !search_matrix(
        [
          [1, 3, 5, 7],
          [10, 11, 16, 20],
          [23, 30, 34, 60]
        ],
        13
      )
    )
  end
end
