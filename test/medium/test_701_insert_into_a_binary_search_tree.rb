# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/701_insert_into_a_binary_search_tree'
require 'minitest/autorun'

class InsertIntoABinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [4, 2, 7, 1, 3, 5]
        ),
        insert_into_bst(
          ::TreeNode.build_tree(
            [4, 2, 7, 1, 3]
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
          [40, 20, 60, 10, 30, 50, 70, nil, nil, 25]
        ),
        insert_into_bst(
          ::TreeNode.build_tree(
            [40, 20, 60, 10, 30, 50, 70]
          ),
          25
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [4, 2, 7, 1, 3, 5]
        ),
        insert_into_bst(
          ::TreeNode.build_tree(
            [4, 2, 7, 1, 3, nil, nil, nil, nil, nil, nil]
          ),
          5
        )
      )
    )
  end
end
