# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/700_search_in_a_binary_search_tree'
require 'minitest/autorun'

class SearchInABinarySearchTreeTest < ::Minitest::Test
  def test_default
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          ::TreeNode.new(3)
        ),
        search_bst(
          ::TreeNode.new(
            4,
            ::TreeNode.new(
              2,
              ::TreeNode.new(1),
              ::TreeNode.new(3)
            ),
            ::TreeNode.new(7)
          ),
          2
        )
      )
    )
    assert_nil(
      search_bst(
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            2,
            ::TreeNode.new(1),
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(7)
        ),
        5
      )
    )
  end
end
