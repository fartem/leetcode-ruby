# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/998_maximum_binary_tree_ii'
require 'minitest/autorun'

class MaximumBinaryTreeIITest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [5, 4, nil, 1, 3, nil, nil, 2]
        ),
        insert_into_max_tree(
          ::TreeNode.build_tree(
            [4, 1, 3, nil, nil, 2]
          ),
          5
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [5, 2, 4, nil, 1, nil, 3]
        ),
        insert_into_max_tree(
          ::TreeNode.build_tree(
            [5, 2, 4, nil, 1]
          ),
          3
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [5, 2, 4, nil, 1, 3]
        ),
        insert_into_max_tree(
          ::TreeNode.build_tree(
            [5, 2, 3, nil, 1]
          ),
          4
        )
      )
    )
  end
end
