# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/652_find_duplicate_subtrees'
require 'minitest/autorun'

class FindDuplicateSubtreesTest < ::Minitest::Test
  def test_default_one
    result = find_duplicate_subtrees(
      ::TreeNode.new(
        1,
        ::TreeNode.new(
          2,
          ::TreeNode.new(4),
          nil
        ),
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            nil
          ),
          ::TreeNode.new(4)
        )
      )
    )

    [
      ::TreeNode.new(4),
      ::TreeNode.new(
        2,
        ::TreeNode.new(4),
        nil
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
      ::TreeNode.new(
        2,
        ::TreeNode.new(1),
        ::TreeNode.new(1)
      )
    )

    [
      ::TreeNode.new(1)
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
      ::TreeNode.new(
        2,
        ::TreeNode.new(
          2,
          ::TreeNode.new(3),
          nil
        ),
        ::TreeNode.new(
          2,
          ::TreeNode.new(3),
          nil
        )
      )
    )

    [
      ::TreeNode.new(3),
      ::TreeNode.new(
        2,
        ::TreeNode.new(3),
        nil
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
