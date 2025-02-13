# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1382_balance_a_binary_search_tree'
require 'minitest/autorun'

class BalanceABinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [2, 1, 3, nil, nil, nil, 4]
        ),
        balance_bst(
          ::TreeNode.build_tree(
            [1, nil, 2, nil, 3, nil, 4, nil, nil]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [2, 1, 3]
        ),
        balance_bst(
          ::TreeNode.build_tree(
            [2, 1, 3]
          )
        )
      )
    )
  end
end
