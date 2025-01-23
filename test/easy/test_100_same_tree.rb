# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/100_same_tree'
require 'minitest/autorun'

class SameTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_same_tree(
        ::TreeNode.build_tree(
          [1, 2, 3]
        ),
        ::TreeNode.build_tree(
          [1, 2, 3]
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_same_tree(
        ::TreeNode.build_tree(
          [1, 2]
        ),
        ::TreeNode.build_tree(
          [1, nil, 2]
        )
      )
    )
  end

  def test_default_three
    assert(
      !is_same_tree(
        ::TreeNode.build_tree(
          [1, 2, 1]
        ),
        ::TreeNode.build_tree(
          [1, 1, 2]
        )
      )
    )
  end
end
