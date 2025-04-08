# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/2415_reverse_odd_levels_of_binary_tree'
require 'minitest/autorun'

class ReverseOddLevelsOfBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [2, 5, 3, 8, 13, 21, 34]
        ),
        reverse_odd_levels(
          ::TreeNode.build_tree(
            [2, 3, 5, 8, 13, 21, 34]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [7, 11, 13]
        ),
        reverse_odd_levels(
          ::TreeNode.build_tree(
            [7, 13, 11]
          )
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [0, 2, 1, 0, 0, 0, 0, 2, 2, 2, 2, 1, 1, 1, 1]
        ),
        reverse_odd_levels(
          ::TreeNode.build_tree(
            [0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2]
          )
        )
      )
    )
  end
end
