# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/109_convert_sorted_list_to_binary_search_tree'
require 'minitest/autorun'

class ConvertSortedListToBinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          0,
          ::TreeNode.new(
            -3,
            ::TreeNode.new(-10),
            nil
          ),
          ::TreeNode.new(
            9,
            ::TreeNode.new(5),
            nil
          )
        ),
        sorted_list_to_bst(
          ::ListNode.from_array(
            [-10, -3, 0, 5, 9]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        nil,
        sorted_list_to_bst(nil)
      )
    )
  end
end
