# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/938_range_sum_of_bst'
require 'minitest/autorun'

class RangeSumOfBSTTest < ::Minitest::Test
  def test_default
    assert_equal(
      32,
      range_sum_bst(
        ::TreeNode.new(
          10,
          ::TreeNode.new(
            5,
            ::TreeNode.new(3),
            ::TreeNode.new(7)
          ),
          ::TreeNode.new(
            15,
            nil,
            ::TreeNode.new(18)
          )
        ),
        7,
        15
      )
    )
    assert_equal(
      23,
      range_sum_bst(
        ::TreeNode.new(
          10,
          ::TreeNode.new(
            5,
            ::TreeNode.new(
              3,
              ::TreeNode.new(1)
            ),
            ::TreeNode.new(
              7,
              ::TreeNode.new(6)
            )
          ),
          ::TreeNode.new(
            15,
            ::TreeNode.new(13),
            ::TreeNode.new(18)
          )
        ),
        6,
        10
      )
    )
  end
end
