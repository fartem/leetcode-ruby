# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/102_binary_tree_level_order_traversal'
require 'minitest/autorun'

class BinaryTreeLevelOrderTraversalTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [3],
        [9, 20],
        [15, 7]
      ],
      level_order(
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
      level_order(
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      [],
      level_order(nil)
    )
  end
end
