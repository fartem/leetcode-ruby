# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/863_all_nodes_distance_k_in_binary_tree'
require 'minitest/autorun'

class AllNodesDistanceKInBinaryTreeTest < ::Minitest::Test
  def test_default_one
    target = ::TreeNode.new(
      5,
      ::TreeNode.new(6),
      ::TreeNode.new(
        2,
        ::TreeNode.new(7),
        ::TreeNode.new(4)
      )
    )

    assert_equal(
      [1, 7, 4],
      distance_k(
        ::TreeNode.new(
          3,
          target,
          ::TreeNode.new(
            1,
            ::TreeNode.new(0),
            ::TreeNode.new(8)
          )
        ),
        target,
        2
      )
    )
  end

  def test_default_two
    target = ::TreeNode.new(1)

    assert_equal(
      [],
      distance_k(
        target,
        target,
        3
      )
    )
  end
end
