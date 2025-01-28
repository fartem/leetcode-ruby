# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1123_lowest_common_ancestor_of_deepest_leaves'
require 'minitest/autorun'

class LowestCommonAncestorOfDeepestLeavesTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        lca_deepest_leaves(
          ::TreeNode.build_tree(
            [3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4]
          )
        ),
        ::TreeNode.build_tree(
          [2, 7, 4]
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        lca_deepest_leaves(
          ::TreeNode.build_tree(
            [1]
          )
        ),
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        lca_deepest_leaves(
          ::TreeNode.build_tree(
            [0, 1, 3, nil, 2]
          )
        ),
        ::TreeNode.build_tree(
          [2]
        )
      )
    )
  end
end
