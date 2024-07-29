# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/617_merge_two_binary_trees'
require 'minitest/autorun'

class MergeTwoBinaryTreesTest < ::Minitest::Test
  def test_default
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            4,
            ::TreeNode.new(5),
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(
            5,
            nil,
            ::TreeNode.new(7)
          )
        ),
        merge_trees(
          ::TreeNode.new(
            1,
            ::TreeNode.new(
              3,
              ::TreeNode.new(5),
              nil
            ),
            ::TreeNode.new(2)
          ),
          ::TreeNode.new(
            2,
            ::TreeNode.new(
              1,
              nil,
              ::TreeNode.new(4)
            ),
            ::TreeNode.new(
              3,
              nil,
              ::TreeNode.new(7)
            )
          )
        )
      )
    )
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          2,
          ::TreeNode.new(2),
          nil
        ),
        merge_trees(
          ::TreeNode.new(1),
          ::TreeNode.new(
            1,
            ::TreeNode.new(2),
            nil
          )
        )
      )
    )
  end
end
