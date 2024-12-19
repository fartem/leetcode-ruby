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
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            3,
            ::TreeNode.new(5),
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(9)
          )
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      7,
      width_of_binary_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            3,
            ::TreeNode.new(
              5,
              ::TreeNode.new(6),
              nil
            ),
            nil
          ),
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(
              9,
              ::TreeNode.new(7),
              nil
            )
          )
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      2,
      width_of_binary_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            3,
            ::TreeNode.new(5),
            nil
          ),
          ::TreeNode.new(2)
        )
      )
    )
  end
end
