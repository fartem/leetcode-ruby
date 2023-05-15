# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/226_invert_binary_tree'
require 'minitest/autorun'

class InvertBinaryTreeTest < ::Minitest::Test
  def test_default
    assert_equal(
      ::TreeNode.new(
        4,
        ::TreeNode.new(
          7,
          ::TreeNode.new(9),
          ::TreeNode.new(6)
        ),
        ::TreeNode.new(
          2,
          ::TreeNode.new(3),
          ::TreeNode.new(1)
        )
      ),
      invert_tree(
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            2,
            ::TreeNode.new(1),
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(
            7,
            ::TreeNode.new(6),
            ::TreeNode.new(9)
          )
        )
      )
    )
    assert_equal(
      ::TreeNode.new(
        2,
        ::TreeNode.new(1),
        ::TreeNode.new(3)
      ),
      invert_tree(
        ::TreeNode.new(
          2,
          ::TreeNode.new(3),
          ::TreeNode.new(1)
        )
      )
    )
    assert_nil(invert_tree(nil))
  end
end
