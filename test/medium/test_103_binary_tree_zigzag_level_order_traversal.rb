# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/103_binary_tree_zigzag_level_order_traversal'
require 'minitest/autorun'

class BinaryTreeZigzagLevelOrderTraversalTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [3],
        [20, 9],
        [15, 7]
      ],
      zigzag_level_order(
        ::TreeNode.build_tree(
          [3, 9, 20, nil, nil, 15, 7]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [1]
      ],
      zigzag_level_order(
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      [],
      zigzag_level_order(nil)
    )
  end
end
