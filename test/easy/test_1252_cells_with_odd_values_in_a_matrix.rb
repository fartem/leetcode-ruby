# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1252_cells_with_odd_values_in_a_matrix'
require 'minitest/autorun'

class CellsWithOddValuesInAMatrixTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      odd_cells(
        2,
        3,
        [
          [0, 1],
          [1, 1]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      odd_cells(
        2,
        2,
        [
          [1, 1],
          [0, 0]
        ]
      )
    )
  end
end
