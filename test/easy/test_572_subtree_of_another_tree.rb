# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/572_subtree_of_another_tree'
require 'minitest/autorun'

class SubtreeOfAnotherTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_subtree(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            4,
            ::TreeNode.new(1),
            ::TreeNode.new(2)
          ),
          ::TreeNode.new(5)
        ),
        ::TreeNode.new(
          4,
          ::TreeNode.new(1),
          ::TreeNode.new(2)
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_subtree(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            4,
            ::TreeNode.new(1),
            ::TreeNode.new(
              2,
              nil,
              ::TreeNode.new(0)
            )
          ),
          ::TreeNode.new(5)
        ),
        ::TreeNode.new(
          4,
          ::TreeNode.new(1),
          ::TreeNode.new(2)
        )
      )
    )
  end
end
