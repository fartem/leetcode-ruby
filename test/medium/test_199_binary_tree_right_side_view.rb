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
        ::TreeNode.build_tree(
          [1, 2, 3, nil, 5, nil, 4]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 3, 4, 5],
      right_side_view(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, nil, nil, nil, 5]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      [1, 3],
      right_side_view(
        ::TreeNode.build_tree(
          [1, nil, 3]
        )
      )
    )
  end

  def test_default_four
    assert_equal(
      [],
      right_side_view(nil)
    )
  end
end
