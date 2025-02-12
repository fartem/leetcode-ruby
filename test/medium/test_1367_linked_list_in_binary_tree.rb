# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/1367_linked_list_in_binary_tree'
require 'minitest/autorun'

class LinkedListInBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_sub_path(
        ::ListNode.from_array(
          [4, 2, 8]
        ),
        ::TreeNode.build_tree(
          [1, 4, 4, nil, 2, 2, nil, 1, nil, 6, 8, nil, nil, nil, nil, 1, 3]
        )
      )
    )
  end

  def test_default_two
    assert(
      is_sub_path(
        ::ListNode.from_array(
          [1, 4, 2, 6]
        ),
        ::TreeNode.build_tree(
          [1, 4, 4, nil, 2, 2, nil, 1, nil, 6, 8, nil, nil, nil, nil, 1, 3]
        )
      )
    )
  end

  def test_default_three
    assert(
      !is_sub_path(
        ::ListNode.from_array(
          [1, 4, 2, 6, 8]
        ),
        ::TreeNode.build_tree(
          [1, 4, 4, nil, 2, 2, nil, 1, nil, 6, 8, nil, nil, nil, nil, 1, 3]
        )
      )
    )
  end
end
