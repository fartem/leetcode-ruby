# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/700_search_in_a_binary_search_tree'
require 'minitest/autorun'

class SearchInABinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [2, 1, 3]
        ),
        search_bst(
          ::TreeNode.build_tree(
            [4, 2, 7, 1, 3]
          ),
          2
        )
      )
    )
  end

  def test_default_two
    assert_nil(
      search_bst(
        ::TreeNode.build_tree(
          [4, 2, 7, 1, 3]
        ),
        5
      )
    )
  end
end
