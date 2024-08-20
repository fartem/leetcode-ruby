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
        ::TreeNode.new(
          3,
          ::TreeNode.new(9),
          ::TreeNode.new(
            20,
            ::TreeNode.new(15),
            ::TreeNode.new(7)
          )
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
        ::TreeNode.new(1)
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
