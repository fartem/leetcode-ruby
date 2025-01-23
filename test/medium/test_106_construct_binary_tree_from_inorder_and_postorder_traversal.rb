# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/106_construct_binary_tree_from_inorder_and_postorder_traversal'
require 'minitest/autorun'

class ConstructBinaryTreeFromInorderAndPostorderTraversalTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [3, 9, 20, nil, nil, 15, 7]
        ),
        build_tree106(
          [9, 3, 15, 20, 7],
          [9, 15, 7, 20, 3]
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [-1]
        ),
        build_tree106(
          [-1],
          [-1]
        )
      )
    )
  end
end
