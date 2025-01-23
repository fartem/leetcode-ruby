# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/872_leaf_similar_trees'
require 'minitest/autorun'

class LeafSimilarTreesTest < ::Minitest::Test
  def test_default_one
    assert(
      leaf_similar(
        ::TreeNode.build_tree(
          [3, 5, 1, 6, 2, 9, 8, nil, nil, 7, 4]
        ),
        ::TreeNode.build_tree(
          [3, 5, 1, 6, 7, 4, 2, nil, nil, nil, nil, nil, nil, 9, 8]
        )
      )
    )
  end

  def test_default_two
    assert(
      !leaf_similar(
        ::TreeNode.build_tree(
          [1, 2, 3]
        ),
        ::TreeNode.build_tree(
          [1, 3, 2]
        )
      )
    )
  end
end
