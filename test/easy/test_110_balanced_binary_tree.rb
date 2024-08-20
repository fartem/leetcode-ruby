# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/110_balanced_binary_tree'
require 'minitest/autorun'

class BalancedBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_balanced(
        ::TreeNode.new(
          3,
          ::TreeNode.new(9),
          ::TreeNode.new(
            20,
            ::TreeNode.new(15),
            ::TreeNode.new(7)
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_balanced(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(
              3,
              ::TreeNode.new(4),
              ::TreeNode.new(4)
            ),
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(2)
        )
      )
    )
  end

  def test_default_three = assert(is_balanced(nil))
end
