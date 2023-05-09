# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/145_binary_tree_postorder_traversal'
require_relative '../../lib/common/binary_tree'
require 'minitest/autorun'

class BinaryTreePostorderTraversalTest < ::Minitest::Test
  def test_default
    assert_equal(
      [3, 2, 1],
      postorder_traversal(
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
    assert_equal([], postorder_traversal(nil))
    assert_equal([1], postorder_traversal(::TreeNode.new(1)))
  end
end
