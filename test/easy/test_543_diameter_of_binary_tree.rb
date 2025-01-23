# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/543_diameter_of_binary_tree'
require 'minitest/autorun'

class DiameterOfBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      diameter_of_binary_tree(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, 5]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      diameter_of_binary_tree(
        ::TreeNode.build_tree(
          [1, 2]
        )
      )
    )
  end
end
