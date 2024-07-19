# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/108_convert_sorted_array_to_binary_search_tree'
require 'minitest/autorun'

class ConvertSortedArrayToBinarySearchTreeTest < ::Minitest::Test
  def test_default
    assert_equal(
      ::TreeNode.new(
        0,
        ::TreeNode.new(
          -10,
          nil,
          ::TreeNode.new(-3)
        ),
        ::TreeNode.new(
          5,
          nil,
          ::TreeNode.new(9)
        )
      ),
      sorted_array_to_bst(
        [-10, -3, 0, 5, 9]
      )
    )
    assert_equal(
      ::TreeNode.new(
        1,
        nil,
        ::TreeNode.new(3)
      ),
      sorted_array_to_bst([1, 3])
    )
  end
end
