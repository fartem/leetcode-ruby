# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/106_construct_binary_tree_from_inorder_and_postorder_traversal'
require 'minitest/autorun'

class ConstructBinaryTreeFromInorderAndPostorderTraversalTest < ::Minitest::Test
  def test_default
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
        build_tree106(
          [9, 3, 15, 20, 7],
          [9, 15, 7, 20, 3]
        )
      )
    )
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(-1),
        build_tree106([-1], [-1])
      )
    )
  end
end
