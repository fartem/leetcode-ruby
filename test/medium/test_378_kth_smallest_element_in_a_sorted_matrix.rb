# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/378_kth_smallest_element_in_a_sorted_matrix'
require 'minitest/autorun'

class KthSmallestElementInASortedMatrixTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      13,
      kth_smallest378(
        [
          [1, 5, 9],
          [10, 11, 13],
          [12, 13, 15]
        ],
        8
      )
    )
  end

  def test_default_two
    assert_equal(
      -5,
      kth_smallest378(
        [[-5]],
        1
      )
    )
  end
end
