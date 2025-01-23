# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/257_binary_tree_paths'
require 'minitest/autorun'

class BinaryTreePathsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      %w[1->2->5 1->3],
      binary_tree_paths(
        ::TreeNode.build_tree(
          [1, 2, 3, nil, 5]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      ['1'],
      binary_tree_paths(
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end
end
