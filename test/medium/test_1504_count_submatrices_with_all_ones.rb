# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1504_count_submatrices_with_all_ones'
require 'minitest/autorun'

class CountSubmatricesWithAllOnesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      13,
      num_submat(
        [
          [1, 0, 1],
          [1, 1, 0],
          [1, 1, 0]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      24,
      num_submat(
        [
          [0, 1, 1, 0],
          [0, 1, 1, 1],
          [1, 1, 1, 0]
        ]
      )
    )
  end
end
