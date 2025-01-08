# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/889_construct_binary_tree_from_preorder_and_postorder_traversal'
require 'minitest/autorun'

class ConstructBinaryTreeFromPreorderAndPostorderTraversalTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            ::TreeNode.new(5)
          ),
          ::TreeNode.new(
            3,
            ::TreeNode.new(6),
            ::TreeNode.new(7)
          )
        ),
        construct_from_pre_post(
          [1, 2, 4, 5, 3, 6, 7],
          [4, 5, 2, 6, 7, 3, 1]
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(1),
        construct_from_pre_post(
          [1],
          [1]
        )
      )
    )
  end
end