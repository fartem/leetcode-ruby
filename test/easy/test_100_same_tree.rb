# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/100_same_tree'
require 'minitest/autorun'

class SameTreeTest < ::Minitest::Test
  def test_default_one
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
  end

  def test_default_two
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
  end

  def test_default_three
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
