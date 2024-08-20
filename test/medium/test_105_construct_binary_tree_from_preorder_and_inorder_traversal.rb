# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/105_construct_binary_tree_from_preorder_and_inorder_traversal'
require 'minitest/autorun'

class ConstructBinaryTreeFromPreorderAndInorderTraversalTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          3,
          ::TreeNode.new(9),
          ::TreeNode.new(
            20,
            ::TreeNode.new(15),
            ::TreeNode.new(7)
          )
        ),
        build_tree(
          [3, 9, 20, 15, 7],
          [9, 3, 15, 20, 7]
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(-1),
        build_tree([-1], [-1])
      )
    )
  end
end
