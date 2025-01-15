# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/951_flip_equivalent_binary_trees'
require 'minitest/autorun'

class FlipEquivalentBinaryTreesTest < ::Minitest::Test
  def test_default_one
    assert(
      flip_equiv(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            ::TreeNode.new(
              5,
              ::TreeNode.new(7),
              ::TreeNode.new(8)
            )
          ),
          ::TreeNode.new(
            3,
            ::TreeNode.new(6),
            nil
          )
        ),
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            3,
            nil,
            ::TreeNode.new(6)
          ),
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            ::TreeNode.new(
              5,
              ::TreeNode.new(8),
              ::TreeNode.new(7)
            )
          )
        )
      )
    )
  end

  def test_default_two = assert(flip_equiv(nil, nil))

  def test_default_three
    assert(
      !flip_equiv(
        nil,
        ::TreeNode.new(1)
      )
    )
  end
end
