# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/98_validate_binary_search_tree'
require 'minitest/autorun'

class ValidateBinarySearchTreeTest < ::Minitest::Test
  def test_default
    assert(
      is_valid_bst(
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          ::TreeNode.new(3)
        )
      )
    )
    assert(
      !is_valid_bst(
        ::TreeNode.new(
          5,
          ::TreeNode.new(1),
          ::TreeNode.new(
            4,
            ::TreeNode.new(3),
            ::TreeNode.new(6)
          )
        )
      )
    )
  end
end
