# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/2326_spiral_matrix_iv'
require 'minitest/autorun'

class SpiralMatrixIVTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [3, 0, 2, 6, 8],
        [5, 0, -1, -1, 1],
        [5, 2, 4, 9, 7]
      ],
      spiral_matrix(
        3,
        5,
        ::ListNode.from_array(
          [3, 0, 2, 6, 8, 1, 7, 9, 4, 2, 5, 5, 0]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [0, 1, 2, -1]
      ],
      spiral_matrix(
        1,
        4,
        ::ListNode.from_array(
          [0, 1, 2]
        )
      )
    )
  end
end
