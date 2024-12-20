# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/669_trim_a_binary_search_tree'
require 'minitest/autorun'

class TrimABinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(2)
        ),
        trim_bst(
          ::TreeNode.new(
            1,
            ::TreeNode.new(0),
            ::TreeNode.new(2)
          ),
          1,
          2
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            2,
            ::TreeNode.new(1),
            nil
          ),
          nil
        ),
        trim_bst(
          ::TreeNode.new(
            3,
            ::TreeNode.new(
              0,
              nil,
              ::TreeNode.new(
                2,
                ::TreeNode.new(1),
                nil
              )
            ),
            ::TreeNode.new(4)
          ),
          1,
          3
        )
      )
    )
  end
end
