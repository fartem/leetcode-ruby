# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/235_lowest_common_ancestor_of_a_binary_search_tree'
require 'minitest/autorun'

class LowestCommonAncestorOfABinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      lowest_common_ancestor(
        ::TreeNode.build_tree(
          [6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5]
        ),
        ::TreeNode.build_tree(
          [2]
        ),
        ::TreeNode.build_tree(
          [8]
        )
      ).val
    )
  end

  def test_default_two
    assert_equal(
      2,
      lowest_common_ancestor(
        ::TreeNode.build_tree(
          [6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5]
        ),
        ::TreeNode.build_tree(
          [2]
        ),
        ::TreeNode.build_tree(
          [4]
        )
      ).val
    )
  end

  def test_default_three
    assert_equal(
      2,
      lowest_common_ancestor(
        ::TreeNode.build_tree(
          [2, 1]
        ),
        ::TreeNode.build_tree(
          [2]
        ),
        ::TreeNode.build_tree(
          [1]
        )
      ).val
    )
  end

  def test_additional_one
    assert_equal(
      4,
      lowest_common_ancestor(
        ::TreeNode.build_tree(
          [6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5]
        ),
        ::TreeNode.build_tree(
          [3]
        ),
        ::TreeNode.build_tree(
          [5]
        )
      ).val
    )
  end
end
