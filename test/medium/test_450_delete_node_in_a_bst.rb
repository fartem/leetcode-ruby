# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/450_delete_node_in_a_bst'
require 'minitest/autorun'

class DeleteNodeInABSTTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [5, 4, 6, 2, nil, nil, 7]
        ),
        delete_node450(
          ::TreeNode.build_tree(
            [5, 3, 6, 2, 4, nil, 7]
          ),
          3
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [5, 3, 6, 2, 4, nil, 7]
        ),
        delete_node450(
          ::TreeNode.build_tree(
            [5, 3, 6, 2, 4, nil, 7]
          ),
          0
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        nil,
        delete_node450(
          nil,
          0
        )
      )
    )
  end

  def test_additional_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [10, 10, 10]
        ),
        delete_node450(
          ::TreeNode.build_tree(
            [10, 10, 10]
          ),
          20
        )
      )
    )
  end

  def test_additional_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [10]
        ),
        delete_node450(
          ::TreeNode.build_tree(
            [8, 10]
          ),
          8
        )
      )
    )
  end
end
