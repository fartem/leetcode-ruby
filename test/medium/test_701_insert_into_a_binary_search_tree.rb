# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/701_insert_into_a_binary_search_tree'
require 'minitest/autorun'

class InsertIntoABinarySearchTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            2,
            ::TreeNode.new(1),
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(
            7,
            ::TreeNode.new(5),
            nil
          )
        ),
        insert_into_bst(
          ::TreeNode.new(
            4,
            ::TreeNode.new(
              2,
              ::TreeNode.new(1),
              ::TreeNode.new(3)
            ),
            ::TreeNode.new(7)
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
          40,
          ::TreeNode.new(
            20,
            ::TreeNode.new(10),
            ::TreeNode.new(
              30,
              ::TreeNode.new(25),
              nil
            )
          ),
          ::TreeNode.new(
            60,
            ::TreeNode.new(50),
            ::TreeNode.new(70)
          )
        ),
        insert_into_bst(
          ::TreeNode.new(
            40,
            ::TreeNode.new(
              20,
              ::TreeNode.new(10),
              ::TreeNode.new(30)
            ),
            ::TreeNode.new(
              60,
              ::TreeNode.new(50),
              ::TreeNode.new(70)
            )
          ),
          25
        )
      )
    )
  end
end
