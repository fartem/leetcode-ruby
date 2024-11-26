# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/450_delete_node_in_a_bst'
require 'minitest/autorun'

class DeleteNodeInABSTTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            4,
            ::TreeNode.new(2),
            nil
          ),
          ::TreeNode.new(
            6,
            nil,
            ::TreeNode.new(7)
          )
        ),
        delete_node450(
          ::TreeNode.new(
            5,
            ::TreeNode.new(
              3,
              ::TreeNode.new(2),
              ::TreeNode.new(4)
            ),
            ::TreeNode.new(
              6,
              nil,
              ::TreeNode.new(7)
            )
          ),
          3
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
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(
            6,
            nil,
            ::TreeNode.new(7)
          )
        ),
        delete_node450(
          ::TreeNode.new(
            5,
            ::TreeNode.new(
              2,
              nil,
              ::TreeNode.new(4)
            ),
            ::TreeNode.new(
              6,
              nil,
              ::TreeNode.new(7)
            )
          ),
          0
        )
      )
    )
  end

  def test_default_three
    assert(
      ::TreeNode.are_equals(
        nil,
        delete_node450(
          nil,
          0
        )
      )
    )
  end

  def test_additional_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          10,
          ::TreeNode.new(10),
          ::TreeNode.new(10)
        ),
        delete_node450(
          ::TreeNode.new(
            10,
            ::TreeNode.new(10),
            ::TreeNode.new(10)
          ),
          20
        )
      )
    )
  end

  def test_additional_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(10),
        delete_node450(
          ::TreeNode.new(
            8,
            ::TreeNode.new(10),
            nil
          ),
          8
        )
      )
    )
  end
end
