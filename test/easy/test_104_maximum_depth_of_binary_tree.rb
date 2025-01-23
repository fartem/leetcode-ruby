# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/104_maximum_depth_of_binary_tree'
require 'minitest/autorun'

class MaximumDepthOfBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      max_depth(
        ::TreeNode.build_tree(
          [3, 9, 20, nil, nil, 15, 7]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      max_depth(
        ::TreeNode.build_tree(
          [1, nil, 2]
        )
      )
    )
  end
end
