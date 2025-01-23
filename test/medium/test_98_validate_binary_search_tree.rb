# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/98_validate_binary_search_tree'
require 'minitest/autorun'

class ValidateBinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_valid_bst(
        ::TreeNode.build_tree(
          [2, 1, 3]
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_valid_bst(
        ::TreeNode.build_tree(
          [5, 1, 4, nil, nil, 3, 6]
        )
      )
    )
  end
end
