# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/814_binary_tree_pruning'
require 'minitest/autorun'

class BinaryTreePruningTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 0, nil, 1]
        ),
        prune_tree(
          ::TreeNode.build_tree(
            [1, nil, 0, 0, 1]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 1, nil, 1]
        ),
        prune_tree(
          ::TreeNode.build_tree(
            [1, 0, 1, 0, 0, 0, 1]
          )
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, 1, 0, 1, 1, nil, 1]
        ),
        prune_tree(
          ::TreeNode.build_tree(
            [1, 1, 0, 1, 1, 0, 1, 0]
          )
        )
      )
    )
  end
end
