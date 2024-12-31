# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/814_binary_tree_pruning'
require 'minitest/autorun'

class BinaryTreePruningTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            0,
            nil,
            ::TreeNode.new(1)
          )
        ),
        prune_tree(
          ::TreeNode.new(
            1,
            nil,
            ::TreeNode.new(
              0,
              ::TreeNode.new(0),
              ::TreeNode.new(1)
            )
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            1,
            nil,
            ::TreeNode.new(1)
          )
        ),
        prune_tree(
          ::TreeNode.new(
            1,
            ::TreeNode.new(
              0,
              ::TreeNode.new(0),
              ::TreeNode.new(0)
            ),
            ::TreeNode.new(
              1,
              ::TreeNode.new(0),
              ::TreeNode.new(1)
            )
          )
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            1,
            ::TreeNode.new(
              1,
              ::TreeNode.new(1),
              ::TreeNode.new(1)
            )
          ),
          ::TreeNode.new(
            0,
            nil,
            ::TreeNode.new(1)
          )
        ),
        prune_tree(
          ::TreeNode.new(
            1,
            ::TreeNode.new(
              1,
              ::TreeNode.new(
                1,
                ::TreeNode.new(
                  1,
                  ::TreeNode.new(0),
                  nil
                ),
                ::TreeNode.new(1)
              )
            ),
            ::TreeNode.new(
              0,
              ::TreeNode.new(0),
              ::TreeNode.new(1)
            )
          )
        )
      )
    )
  end
end
