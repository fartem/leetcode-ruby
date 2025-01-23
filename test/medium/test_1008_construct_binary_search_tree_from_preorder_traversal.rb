# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1008_construct_binary_search_tree_from_preorder_traversal'
require 'minitest/autorun'

class ConstructBinarySearchTreeFromPreorderTraversalTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [8, 5, 10, 1, 7, nil, 12]
        ),
        bst_from_preorder(
          [8, 5, 1, 7, 10, 12]
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 3]
        ),
        bst_from_preorder(
          [1, 3]
        )
      )
    )
  end
end
