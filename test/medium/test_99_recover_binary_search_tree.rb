# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/99_recover_binary_search_tree'
require 'minitest/autorun'

class RecoverBinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    input = ::TreeNode.new(
      1,
      ::TreeNode.new(
        3,
        nil,
        ::TreeNode.new(2)
      ),
      nil
    )
    recover_tree(input)

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            1,
            nil,
            ::TreeNode.new(2)
          ),
          nil
        ),
        input
      )
    )
  end

  def test_default_two
    input = ::TreeNode.new(
      3,
      ::TreeNode.new(1),
      ::TreeNode.new(
        4,
        ::TreeNode.new(2),
        nil
      )
    )
    recover_tree(input)

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          ::TreeNode.new(
            4,
            ::TreeNode.new(3),
            nil
          )
        ),
        input
      )
    )
  end
end
