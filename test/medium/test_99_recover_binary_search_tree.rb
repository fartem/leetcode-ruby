# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/99_recover_binary_search_tree'
require 'minitest/autorun'

class RecoverBinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    input = ::TreeNode.build_tree(
      [1, 3, nil, nil, 2]
    )
    recover_tree(input)

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [3, 1, nil, nil, 2]
        ),
        input
      )
    )
  end

  def test_default_two
    input = ::TreeNode.build_tree(
      [3, 1, 4, nil, nil, 2]
    )
    recover_tree(input)

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [2, 1, 4, nil, nil, 3]
        ),
        input
      )
    )
  end
end
