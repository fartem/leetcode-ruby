# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/111_minimum_depth_of_binary_tree'
require_relative '../../lib/common/binary_tree'
require 'minitest/autorun'

class MinimumDepthOfBinaryTreeTest < ::Minitest::Test
  def test_default
    assert_equal(
      2,
      min_depth(
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
    assert_equal(
      5,
      min_depth(
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
      )
    )
  end
end
