# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/637_average_of_levels_in_binary_tree'
require 'minitest/autorun'

class AverageOfLevelsInBinaryTreeTest < ::Minitest::Test
  def test_default
    assert_equal(
      [3.00000, 14.50000, 11.00000],
      average_of_levels(
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
      [3.00000, 14.50000, 11.00000],
      average_of_levels(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            20,
            ::TreeNode.new(15),
            ::TreeNode.new(7)
          ),
          ::TreeNode.new(9)
        )
      )
    )
  end
end
