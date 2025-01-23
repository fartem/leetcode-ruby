# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/563_binary_tree_tilt'
require 'minitest/autorun'

class BinaryTreeTiltTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      find_tilt(
        ::TreeNode.build_tree(
          [1, 2, 3]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      15,
      find_tilt(
        ::TreeNode.build_tree(
          [4, 2, 9, 3, 5, nil, 7]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      9,
      find_tilt(
        ::TreeNode.build_tree(
          [21, 7, 14, 1, 1, 2, 2, 3, 3]
        )
      )
    )
  end
end
