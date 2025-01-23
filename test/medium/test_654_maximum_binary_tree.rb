# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/654_maximum_binary_tree'
require 'minitest/autorun'

class MaximumBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [6, 3, 5, nil, 2, 0, nil, nil, 1]
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
        ::TreeNode.build_tree(
          [3, nil, 2, nil, 1]
        ),
        construct_maximum_binary_tree(
          [3, 2, 1]
        )
      )
    )
  end
end
