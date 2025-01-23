# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/110_balanced_binary_tree'
require 'minitest/autorun'

class BalancedBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_balanced(
        ::TreeNode.build_tree(
          [3, 9, 20, nil, nil, 15, 7]
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_balanced(
        ::TreeNode.build_tree(
          [1, 2, 2, 3, 3, nil, nil, 4, 4]
        )
      )
    )
  end

  def test_default_three = assert(is_balanced(nil))
end
