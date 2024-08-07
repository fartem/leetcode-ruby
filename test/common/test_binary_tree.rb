# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require 'minitest/autorun'

class BinaryTreeTest < ::Minitest::Test
  def test_default
    first = ::TreeNode.new(
      1,
      ::TreeNode.new(2),
      ::TreeNode.new(3)
    )
    second = ::TreeNode.new(
      1,
      ::TreeNode.new(2),
      ::TreeNode.new(3)
    )
    assert(
      ::TreeNode.are_equals(
        first,
        second
      )
    )

    third = ::TreeNode.new(
      1,
      ::TreeNode.new(4),
      ::TreeNode.new(5)
    )
    assert(
      !::TreeNode.are_equals(
        first,
        third
      )
    )
    assert(
      !::TreeNode.are_equals(
        second,
        third
      )
    )
  end
end
