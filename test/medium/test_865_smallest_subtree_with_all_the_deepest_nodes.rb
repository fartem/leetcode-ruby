# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/865_smallest_subtree_with_all_the_deepest_nodes'
require 'minitest/autorun'

class SmallestSubtreeWithAllTheDeepestNodesTest < ::Minitest::Test
  def test_default_one
    target = ::TreeNode.new(
      2,
      ::TreeNode.new(7),
      ::TreeNode.new(4)
    )

    assert_equal(
      target,
      subtree_with_all_deepest(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            5,
            ::TreeNode.new(6),
            target
          ),
          ::TreeNode.new(
            1,
            ::TreeNode.new(0),
            ::TreeNode.new(8)
          )
        )
      )
    )
  end

  def test_default_two
    target = ::TreeNode.new(1)

    assert_equal(
      target,
      subtree_with_all_deepest(
        target
      )
    )
  end

  def test_default_three
    target = ::TreeNode.new(2)

    assert_equal(
      target,
      subtree_with_all_deepest(
        ::TreeNode.new(
          0,
          ::TreeNode.new(
            1,
            nil,
            target
          ),
          ::TreeNode.new(3)
        )
      )
    )
  end
end
