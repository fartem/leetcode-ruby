# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/100_same_tree'
require 'minitest/autorun'

class SameTreeTest < ::Minitest::Test
  def test_default
    assert(
      is_same_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          ::TreeNode.new(3)
        ),
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          ::TreeNode.new(3)
        )
      )
    )
    assert(
      !is_same_tree(
        ::TreeNode.new(
          ::TreeNode.new(2)
        ),
        ::TreeNode.new(
          nil,
          ::TreeNode.new(2)
        )
      )
    )
    assert(
      !is_same_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          ::TreeNode.new(1)
        ),
        ::TreeNode.new(
          1,
          ::TreeNode.new(1),
          ::TreeNode.new(2)
        )
      )
    )
  end
end
