# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/114_flatten_binary_tree_to_linked_list'
require 'minitest/autorun'

class FlattenBinaryTreeToLinkedListTest < ::Minitest::Test
  def test_default_one
    input = ::TreeNode.new(
      1,
      ::TreeNode.new(
        2,
        ::TreeNode.new(3),
        ::TreeNode.new(4)
      ),
      ::TreeNode.new(
        5,
        ::TreeNode.new(6),
        nil
      )
    )
    flatten(input)

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(
              3,
              nil,
              ::TreeNode.new(
                4,
                nil,
                ::TreeNode.new(
                  5,
                  nil,
                  ::TreeNode.new(6)
                )
              )
            )
          )
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
    input = ::TreeNode.new(0)
    flatten(input)

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(0),
        input
      )
    )
  end
end
