# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/783_minimum_distance_between_bst_nodes'
require 'minitest/autorun'

class MinimumDistanceBetweenBSTNodesTest < ::Minitest::Test
  def test_default
    assert_equal(
      1,
      min_diff_in_bst(
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            2,
            ::TreeNode.new(1),
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(6)
        )
      )
    )
    assert_equal(
      1,
      min_diff_in_bst(
        ::TreeNode.new(
          1,
          ::TreeNode.new(0),
          ::TreeNode.new(
            48,
            ::TreeNode.new(12),
            ::TreeNode.new(49)
          )
        )
      )
    )
  end
end
