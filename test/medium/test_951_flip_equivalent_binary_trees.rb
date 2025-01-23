# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/951_flip_equivalent_binary_trees'
require 'minitest/autorun'

class FlipEquivalentBinaryTreesTest < ::Minitest::Test
  def test_default_one
    assert(
      flip_equiv(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, 5, 6, nil, nil, nil, 7, 8]
        ),
        ::TreeNode.build_tree(
          [1, 3, 2, nil, 6, 4, 5, nil, nil, nil, nil, 8, 7]
        )
      )
    )
  end

  def test_default_two = assert(flip_equiv(nil, nil))

  def test_default_three
    assert(
      !flip_equiv(
        nil,
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end
end
