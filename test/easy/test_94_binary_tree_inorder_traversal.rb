# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/94_binary_tree_inorder_traversal'
require 'minitest/autorun'

class BinaryTreeInorderTraversalTest < ::Minitest::Test
  def test_default
    assert_equal(
      [1, 3, 2],
      inorder_traversal(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            2,
            ::TreeNode.new(3)
          )
        )
      )
    )
    assert_equal(
      [],
      inorder_traversal(nil)
    )
    assert_equal(
      [1],
      inorder_traversal(
        ::TreeNode.new(1)
      )
    )
  end
end
