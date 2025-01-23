# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/671_second_minimum_node_in_a_binary_tree'
require 'minitest/autorun'

class SecondMinimumNodeInABinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      5,
      find_second_minimum_value(
        ::TreeNode.build_tree(
          [2, 2, 5, nil, nil, 5, 7]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      -1,
      find_second_minimum_value(
        ::TreeNode.build_tree(
          [2, 2, 2]
        )
      )
    )
  end
end
