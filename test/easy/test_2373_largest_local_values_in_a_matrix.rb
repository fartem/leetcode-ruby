# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2373_largest_local_values_in_a_matrix'
require 'minitest/autorun'

class LargestLocalValuesInAMatrixTest < ::Minitest::Test
  def test_default
    assert_equal(
      [[9, 9], [8, 6]],
      largest_local(
        [
          [9, 9, 8, 1],
          [5, 6, 2, 6],
          [8, 2, 6, 4],
          [6, 2, 2, 2]
        ]
      )
    )
    assert_equal(
      [[2, 2, 2], [2, 2, 2], [2, 2, 2]],
      largest_local(
        [
          [1, 1, 1, 1, 1],
          [1, 1, 1, 1, 1],
          [1, 1, 2, 1, 1],
          [1, 1, 1, 1, 1],
          [1, 1, 1, 1, 1]
        ]
      )
    )
  end
end
