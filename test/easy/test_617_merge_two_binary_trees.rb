# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/617_merge_two_binary_trees'
require 'minitest/autorun'

class MergeTwoBinaryTreesTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [3, 4, 5, 5, 4, nil, 7]
        ),
        merge_trees(
          ::TreeNode.build_tree(
            [1, 3, 2, 5]
          ),
          ::TreeNode.build_tree(
            [2, 1, 3, nil, 4, nil, 7]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [2, 2]
        ),
        merge_trees(
          ::TreeNode.build_tree(
            [1]
          ),
          ::TreeNode.build_tree(
            [1, 2]
          )
        )
      )
    )
  end
end
