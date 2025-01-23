# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/114_flatten_binary_tree_to_linked_list'
require 'minitest/autorun'

class FlattenBinaryTreeToLinkedListTest < ::Minitest::Test
  def test_default_one
    input = ::TreeNode.build_tree(
      [1, 2, 5, 3, 4, nil, 6]
    )
    flatten(input)

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 2, nil, 3, nil, 4, nil, 5, nil, 6]
        ),
        input
      )
    )
  end

  def test_default_two
    input = nil
    flatten(input)

    assert_nil(input)
  end

  def test_default_three
    input = ::TreeNode.build_tree(
      [0]
    )
    flatten(input)

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [0]
        ),
        input
      )
    )
  end
end
