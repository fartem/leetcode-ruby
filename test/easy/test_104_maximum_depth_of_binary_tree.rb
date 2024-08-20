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
        ::TreeNode.new(
          3,
          ::TreeNode.new(9),
          ::TreeNode.new(
            20,
            ::TreeNode.new(15),
            ::TreeNode.new(7)
          )
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      max_depth(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(2)
        )
      )
    )
  end
end
