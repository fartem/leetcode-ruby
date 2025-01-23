# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/226_invert_binary_tree'
require 'minitest/autorun'

class InvertBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [4, 7, 2, 9, 6, 3, 1]
        ),
        invert_tree(
          ::TreeNode.build_tree(
            [4, 2, 7, 1, 3, 6, 9]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [2, 3, 1]
        ),
        invert_tree(
          ::TreeNode.build_tree(
            [2, 1, 3]
          )
        )
      )
    )
  end

  def test_default_three = assert_nil(invert_tree(nil))
end
