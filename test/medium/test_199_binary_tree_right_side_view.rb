# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/199_binary_tree_right_side_view'
require 'minitest/autorun'

class BinaryTreeRightSideViewTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, 3, 4],
      right_side_view(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(5)
          ),
          ::TreeNode.new(
            3,
            nil,
            ::TreeNode.new(4)
          )
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 3],
      right_side_view(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(3)
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      [],
      right_side_view(nil)
    )
  end
end
