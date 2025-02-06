# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1325_delete_leaves_with_a_given_value'
require 'minitest/autorun'

class DeleteLeavesWithAGivenValueTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 3, nil, 4]
        ),
        remove_leaf_nodes(
          ::TreeNode.build_tree(
            [1, 2, 3, 2, nil, 2, 4]
          ),
          2
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, 3, nil, nil, 2]
        ),
        remove_leaf_nodes(
          ::TreeNode.build_tree(
            [1, 3, 3, 3, 2]
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
          [1]
        ),
        remove_leaf_nodes(
          ::TreeNode.build_tree(
            [1, 2, nil, 2, nil, 2]
          ),
          2
        )
      )
    )
  end
end
