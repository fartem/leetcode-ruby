# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/654_maximum_binary_tree'
require 'minitest/autorun'

class MaximumBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          6,
          ::TreeNode.new(
            3,
            nil,
            ::TreeNode.new(
              2,
              nil,
              ::TreeNode.new(1)
            )
          ),
          ::TreeNode.new(
            5,
            ::TreeNode.new(0),
            nil
          )
        ),
        construct_maximum_binary_tree(
          [3, 2, 1, 6, 0, 5]
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          3,
          nil,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(1)
          )
        ),
        construct_maximum_binary_tree(
          [3, 2, 1]
        )
      )
    )
  end
end
