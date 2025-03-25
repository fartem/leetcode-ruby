# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/2196_create_binary_tree_from_descriptions'
require 'minitest/autorun'

class CreateBinaryTreeFromDescriptionsTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [50, 20, 80, 15, 17, 19]
        ),
        create_binary_tree(
          [
            [20, 15, 1],
            [20, 17, 0],
            [50, 20, 1],
            [50, 80, 0],
            [80, 19, 1]
          ]
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, 2, nil, nil, 3, 4]
        ),
        create_binary_tree(
          [
            [1, 2, 1],
            [2, 3, 0],
            [3, 4, 1]
          ]
        )
      )
    )
  end
end
