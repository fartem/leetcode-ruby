# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/236_lowest_common_ancestor_of_a_binary_tree'
require 'minitest/autorun'

class LowestCommonAncestorOfABinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      lowest_common_ancestor236(
        ::TreeNode.build_tree(
          [3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4]
        ),
        ::TreeNode.build_tree(
          [5]
        ),
        ::TreeNode.build_tree(
          [1]
        )
      ).val
    )
  end

  def test_default_two
    assert_equal(
      5,
      lowest_common_ancestor236(
        ::TreeNode.build_tree(
          [3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4]
        ),
        ::TreeNode.build_tree(
          [5]
        ),
        ::TreeNode.build_tree(
          [4]
        )
      ).val
    )
  end

  def test_default_three
    assert_equal(
      1,
      lowest_common_ancestor236(
        ::TreeNode.build_tree(
          [1, 2]
        ),
        ::TreeNode.build_tree(
          [1]
        ),
        ::TreeNode.build_tree(
          [2]
        )
      ).val
    )
  end
end
