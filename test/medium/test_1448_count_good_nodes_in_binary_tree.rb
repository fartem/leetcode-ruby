# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1448_count_good_nodes_in_binary_tree'
require 'minitest/autorun'

class CountGoodNodesInBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      good_nodes(
        ::TreeNode.build_tree(
          [3, 1, 4, 3, nil, 1, 5]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      good_nodes(
        ::TreeNode.build_tree(
          [3, 3, nil, 4, 2]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      good_nodes(
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end
end
