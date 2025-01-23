# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/173_binary_search_tree_iterator'
require 'minitest/autorun'

class BinarySearchTreeIndicatorTest < ::Minitest::Test
  def test_default_one
    bst_iterator = ::BSTIterator.new(
      ::TreeNode.build_tree(
        [7, 3, 15, nil, nil, 9, 20]
      )
    )

    assert_equal(3, bst_iterator.next)
    assert_equal(7, bst_iterator.next)
    assert(bst_iterator.has_next)

    assert_equal(9, bst_iterator.next)
    assert(bst_iterator.has_next)

    assert_equal(15, bst_iterator.next)
    assert(bst_iterator.has_next)

    assert_equal(20, bst_iterator.next)
    assert(!bst_iterator.has_next)
  end
end
