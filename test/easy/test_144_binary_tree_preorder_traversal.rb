# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/144_binary_tree_preorder_traversal'
require_relative '../../lib/common/binary_tree'
require 'minitest/autorun'

class BinaryTreePreorderTraversalTest < ::Minitest::Test
  def test_default
    assert_equal(
      [1, 2, 3],
      preorder_traversal(
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
    assert_equal([], preorder_traversal(nil))
    assert_equal([1], preorder_traversal(::TreeNode.new(1)))
  end
end
