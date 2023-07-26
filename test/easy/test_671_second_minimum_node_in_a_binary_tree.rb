# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/671_second_minimum_node_in_a_binary_tree'
require 'minitest/autorun'

class SecondMinimumNodeInABinaryTreeTest < ::Minitest::Test
  def test_default
    assert_equal(
      5,
      find_second_minimum_value(
        ::TreeNode.new(
          2,
          ::TreeNode.new(2),
          ::TreeNode.new(
            5,
            ::TreeNode.new(5),
            ::TreeNode.new(7)
          )
        )
      )
    )
    assert_equal(
      -1,
      find_second_minimum_value(
        ::TreeNode.new(
          2,
          ::TreeNode.new(2),
          ::TreeNode.new(2)
        )
      )
    )
  end
end
