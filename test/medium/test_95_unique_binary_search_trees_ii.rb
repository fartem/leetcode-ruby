# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/95_unique_binary_search_trees_ii'
require 'minitest/autorun'

class UniqueBinarySearchTreesIITest < ::Minitest::Test
  def test_default
    assert_equal(
      [
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(3)
          )
        ),
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            3,
            ::TreeNode.new(2),
            nil
          )
        ),
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          ::TreeNode.new(3)
        ),
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            1,
            nil,
            ::TreeNode.new(2)
          ),
          nil
        ),
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            2,
            ::TreeNode.new(1),
            nil
          ),
          nil
        )
      ],
      generate_trees(3)
    )
    assert_equal(
      [::TreeNode.new(1)],
      generate_trees(1)
    )
  end
end
