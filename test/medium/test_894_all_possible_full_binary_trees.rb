# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/894_all_possible_full_binary_trees'
require 'minitest/autorun'

class AllPossibleFullBinaryTreesTest < ::Minitest::Test
  def test_default_one
    correct = [
      ::TreeNode.build_tree(
        [0, 0, 0, nil, nil, 0, 0, nil, nil, 0, 0]
      ),
      ::TreeNode.build_tree(
        [0, 0, 0, nil, nil, 0, 0, 0, 0]
      ),
      ::TreeNode.build_tree(
        [0, 0, 0, 0, 0, 0, 0]
      ),
      ::TreeNode.build_tree(
        [0, 0, 0, 0, 0, nil, nil, nil, nil, 0, 0]
      ),
      ::TreeNode.build_tree(
        [0, 0, 0, 0, 0, nil, nil, 0, 0]
      )
    ]

    result = all_possible_fbt(7)

    assert_equal(5, result.size)

    result.each_with_index do |node, index|
      assert(
        ::TreeNode.are_equals(
          node,
          correct[index]
        )
      )
    end
  end

  def test_default_two
    correct = [
      ::TreeNode.build_tree(
        [0, 0, 0]
      )
    ]

    result = all_possible_fbt(3)

    assert_equal(1, result.size)

    result.each_with_index do |node, index|
      assert(
        ::TreeNode.are_equals(
          node,
          correct[index]
        )
      )
    end
  end
end
