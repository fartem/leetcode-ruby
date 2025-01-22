# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1008_construct_binary_search_tree_from_preorder_traversal'
require 'minitest/autorun'

class ConstructBinarySearchTreeFromPreorderTraversalTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          8,
          ::TreeNode.new(
            5,
            ::TreeNode.new(1),
            ::TreeNode.new(7)
          ),
          ::TreeNode.new(
            10,
            nil,
            ::TreeNode.new(12)
          )
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
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(3)
        ),
        bst_from_preorder(
          [1, 3]
        )
      )
    )
  end
end
