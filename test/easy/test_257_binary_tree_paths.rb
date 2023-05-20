# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/257_binary_tree_paths'
require 'minitest/autorun'

class BinaryTreePathsTest < ::Minitest::Test
  def test_default
    assert_equal(
      %w[1->2->5 1->3],
      binary_tree_paths(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(5)
          ),
          ::TreeNode.new(3)
        )
      )
    )
    assert_equal(
      ['1'],
      binary_tree_paths(
        ::TreeNode.new(1)
      )
    )
  end
end
