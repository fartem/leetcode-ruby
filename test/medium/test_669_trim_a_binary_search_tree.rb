# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/669_trim_a_binary_search_tree'
require 'minitest/autorun'

class TrimABinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 2]
        ),
        trim_bst(
          ::TreeNode.build_tree(
            [1, 0, 2]
          ),
          1,
          2
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [3, 2, nil, 1]
        ),
        trim_bst(
          ::TreeNode.build_tree(
            [3, 0, 4, nil, 2, nil, nil, 1]
          ),
          1,
          3
        )
      )
    )
  end
end
