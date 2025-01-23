# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/652_find_duplicate_subtrees'
require 'minitest/autorun'

class FindDuplicateSubtreesTest < ::Minitest::Test
  def test_default_one
    result = find_duplicate_subtrees(
      ::TreeNode.build_tree(
        [1, 2, 3, 4, nil, 2, 4, nil, nil, 4]
      )
    )

    [
      ::TreeNode.build_tree(
        [4]
      ),
      ::TreeNode.build_tree(
        [2, 4]
      )
    ].each_with_index do |node, index|
      assert(
        ::TreeNode.are_equals(
          node,
          result[index]
        )
      )
    end
  end

  def test_default_two
    result = find_duplicate_subtrees(
      ::TreeNode.build_tree(
        [2, 1, 1]
      )
    )

    [
      ::TreeNode.build_tree(
        [1]
      )
    ].each_with_index do |node, index|
      assert(
        ::TreeNode.are_equals(
          node,
          result[index]
        )
      )
    end
  end

  def test_default_three
    result = find_duplicate_subtrees(
      ::TreeNode.build_tree(
        [2, 2, 2, 3, nil, 3, nil]
      )
    )

    [
      ::TreeNode.build_tree(
        [3]
      ),
      ::TreeNode.build_tree(
        [2, 3]
      )
    ].each_with_index do |node, index|
      assert(
        ::TreeNode.are_equals(
          node,
          result[index]
        )
      )
    end
  end
end
