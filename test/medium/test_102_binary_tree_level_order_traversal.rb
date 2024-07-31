# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/102_binary_tree_level_order_traversal'
require 'minitest/autorun'

class BinaryTreeLevelOrderTraversalTest < ::Minitest::Test
  def test_default
    assert_equal(
      [[3], [9, 20], [15, 7]],
      level_order(
        ::TreeNode.new(
          3,
          ::TreeNode.new(9),
          ::TreeNode.new(
            20,
            ::TreeNode.new(15),
            ::TreeNode.new(7)
          )
        )
      )
    )
    assert_equal([[1]], level_order(::TreeNode.new(1)))
    assert_equal([], level_order(nil))
  end
end
