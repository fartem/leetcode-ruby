# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/998_maximum_binary_tree_ii'
require 'minitest/autorun'

class MaximumBinaryTreeIITest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            4,
            ::TreeNode.new(1),
            ::TreeNode.new(
              3,
              ::TreeNode.new(2),
              nil
            )
          ),
          nil
        ),
        insert_into_max_tree(
          ::TreeNode.new(
            4,
            ::TreeNode.new(1),
            ::TreeNode.new(
              3,
              ::TreeNode.new(2),
              nil
            )
          ),
          5
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(1)
          ),
          ::TreeNode.new(
            4,
            nil,
            ::TreeNode.new(3)
          )
        ),
        insert_into_max_tree(
          ::TreeNode.new(
            5,
            ::TreeNode.new(
              2,
              nil,
              ::TreeNode.new(1)
            ),
            ::TreeNode.new(4)
          ),
          3
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(1)
          ),
          ::TreeNode.new(
            4,
            ::TreeNode.new(3),
            nil
          )
        ),
        insert_into_max_tree(
          ::TreeNode.new(
            5,
            ::TreeNode.new(
              2,
              nil,
              ::TreeNode.new(1)
            ),
            ::TreeNode.new(3)
          ),
          4
        )
      )
    )
  end
end
