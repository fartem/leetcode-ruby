# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/938_range_sum_of_bst'
require 'minitest/autorun'

class RangeSumOfBSTTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      32,
      range_sum_bst(
        ::TreeNode.build_tree(
          [10, 5, 15, 3, 7, nil, 18]
        ),
        7,
        15
      )
    )
  end

  def test_default_two
    assert_equal(
      23,
      range_sum_bst(
        ::TreeNode.build_tree(
          [10, 5, 15, 3, 7, 13, 18, 1, nil, 6]
        ),
        6,
        10
      )
    )
  end
end
