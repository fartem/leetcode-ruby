# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/572_subtree_of_another_tree'
require 'minitest/autorun'

class SubtreeOfAnotherTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_subtree(
        ::TreeNode.build_tree(
          [3, 4, 5, 1, 2]
        ),
        ::TreeNode.build_tree(
          [4, 1, 2]
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_subtree(
        ::TreeNode.build_tree(
          [3, 4, 5, 1, 2, nil, nil, nil, nil, 0]
        ),
        ::TreeNode.build_tree(
          [4, 1, 2]
        )
      )
    )
  end
end
