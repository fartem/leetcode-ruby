# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/662_maximum_width_of_binary_tree'
require 'minitest/autorun'

class MaximumWidthOfBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      width_of_binary_tree(
        ::TreeNode.build_tree(
          [1, 3, 2, 5, 3, nil, 9]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      7,
      width_of_binary_tree(
        ::TreeNode.build_tree(
          [1, 3, 2, 5, nil, nil, 9, 6, nil, 7]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      2,
      width_of_binary_tree(
        ::TreeNode.build_tree(
          [1, 3, 2, 5]
        )
      )
    )
  end
end
