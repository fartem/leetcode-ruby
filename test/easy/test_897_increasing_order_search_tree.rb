# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/897_increasing_order_search_tree'
require 'minitest/autorun'

class IncreasingOrderSearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 2, nil, 3, nil, 4, nil, 5, nil, 6, nil, 7, nil, 8, nil, 9]
        ),
        increasing_bst(
          ::TreeNode.build_tree(
            [5, 3, 6, 2, 4, nil, 8, 1, nil, nil, nil, 7, 9]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 5, nil, 7]
        ),
        increasing_bst(
          ::TreeNode.build_tree(
            [5, 1, 7]
          )
        )
      )
    )
  end
end
