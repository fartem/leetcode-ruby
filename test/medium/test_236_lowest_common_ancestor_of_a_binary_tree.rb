# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/236_lowest_common_ancestor_of_a_binary_tree'
require 'minitest/autorun'

class LowestCommonAncestorOfABinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      lowest_common_ancestor236(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            5,
            ::TreeNode.new(6),
            ::TreeNode.new(
              2,
              ::TreeNode.new(7),
              ::TreeNode.new(4)
            )
          ),
          ::TreeNode.new(
            1,
            ::TreeNode.new(0),
            ::TreeNode.new(8)
          )
        ),
        ::TreeNode.new(5),
        ::TreeNode.new(1)
      ).val
    )
  end

  def test_default_two
    assert_equal(
      5,
      lowest_common_ancestor236(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            5,
            ::TreeNode.new(6),
            ::TreeNode.new(
              2,
              ::TreeNode.new(7),
              ::TreeNode.new(4)
            )
          ),
          ::TreeNode.new(
            1,
            ::TreeNode.new(0),
            ::TreeNode.new(8)
          )
        ),
        ::TreeNode.new(5),
        ::TreeNode.new(4)
      ).val
    )
  end

  def test_default_three
    assert_equal(
      1,
      lowest_common_ancestor236(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          nil
        ),
        ::TreeNode.new(1),
        ::TreeNode.new(2)
      ).val
    )
  end
end
