# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/235_lowest_common_ancestor_of_a_binary_search_tree'
require 'minitest/autorun'

class LowestCommonAncestorOfABinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      lowest_common_ancestor(
        ::TreeNode.new(
          6,
          ::TreeNode.new(
            2,
            ::TreeNode.new(0),
            ::TreeNode.new(
              4,
              ::TreeNode.new(3),
              ::TreeNode.new(5)
            )
          ),
          ::TreeNode.new(
            8,
            ::TreeNode.new(7),
            ::TreeNode.new(9)
          )
        ),
        ::TreeNode.new(2),
        ::TreeNode.new(8)
      ).val
    )
  end

  def test_default_two
    assert_equal(
      2,
      lowest_common_ancestor(
        ::TreeNode.new(
          6,
          ::TreeNode.new(
            2,
            ::TreeNode.new(0),
            ::TreeNode.new(
              4,
              ::TreeNode.new(3),
              ::TreeNode.new(5)
            )
          ),
          ::TreeNode.new(
            8,
            ::TreeNode.new(7),
            ::TreeNode.new(9)
          )
        ),
        ::TreeNode.new(2),
        ::TreeNode.new(4)
      ).val
    )
  end

  def test_default_three
    assert_equal(
      2,
      lowest_common_ancestor(
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          nil
        ),
        ::TreeNode.new(2),
        ::TreeNode.new(1)
      ).val
    )
  end

  def test_additional_one
    assert_equal(
      4,
      lowest_common_ancestor(
        ::TreeNode.new(
          6,
          ::TreeNode.new(
            2,
            ::TreeNode.new(0),
            ::TreeNode.new(
              4,
              ::TreeNode.new(3),
              ::TreeNode.new(5)
            )
          ),
          ::TreeNode.new(
            8,
            ::TreeNode.new(7),
            ::TreeNode.new(9)
          )
        ),
        ::TreeNode.new(3),
        ::TreeNode.new(5)
      ).val
    )
  end
end
