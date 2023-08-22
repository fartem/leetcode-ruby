# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/872_leaf_similar_trees'
require 'minitest/autorun'

class LeafSimilarTreesTest < ::Minitest::Test
  def test_default
    assert(
      leaf_similar(
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
            ::TreeNode.new(9),
            ::TreeNode.new(8)
          )
        ),
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            5,
            ::TreeNode.new(6),
            ::TreeNode.new(7)
          ),
          ::TreeNode.new(
            1,
            ::TreeNode.new(4),
            ::TreeNode.new(
              2,
              ::TreeNode.new(9),
              ::TreeNode.new(8)
            )
          )
        )
      )
    )
    assert(
      !leaf_similar(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          ::TreeNode.new(3)
        ),
        ::TreeNode.new(
          1,
          ::TreeNode.new(3),
          ::TreeNode.new(2)
        )
      )
    )
  end
end
