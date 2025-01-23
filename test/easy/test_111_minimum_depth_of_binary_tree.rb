# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/111_minimum_depth_of_binary_tree'
require 'minitest/autorun'

class MinimumDepthOfBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      min_depth(
        ::TreeNode.build_tree(
          [3, 9, 20, nil, nil, 15, 7]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      5,
      min_depth(
        ::TreeNode.build_tree(
          [2, nil, 3, nil, 4, nil, 5, nil, 6]
        )
      )
    )
  end
end
