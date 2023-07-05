# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/543_diameter_of_binary_tree'
require 'minitest/autorun'

class DiameterOfBinaryTreeTest < ::Minitest::Test
  def test_default
    assert_equal(
      3,
      diameter_of_binary_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            ::TreeNode.new(5)
          ),
          ::TreeNode.new(3)
        )
      )
    )
    assert_equal(
      1,
      diameter_of_binary_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          nil
        )
      )
    )
  end
end
