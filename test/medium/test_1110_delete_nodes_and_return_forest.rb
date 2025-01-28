# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1110_delete_nodes_and_return_forest'
require 'minitest/autorun'

class DeleteNodesAndReturnForestTest < ::Minitest::Test
  def test_default_one
    result = del_nodes(
      ::TreeNode.build_tree(
        [1, 2, 3, 4, 5, 6, 7]
      ),
      [3, 5]
    )

    [
      ::TreeNode.build_tree(
        [6]
      ),
      ::TreeNode.build_tree(
        [7]
      ),
      ::TreeNode.build_tree(
        [1, 2, nil, 4]
      )
    ].each_with_index do |tree, index|
      assert(
        ::TreeNode.are_equals(
          result[index],
          tree
        )
      )
    end
  end

  def test_default_two
    result = del_nodes(
      ::TreeNode.build_tree(
        [1, 2, 4, nil, 3]
      ),
      [3]
    )

    [
      ::TreeNode.build_tree(
        [1, 2, 4]
      )
    ].each_with_index do |tree, index|
      assert(
        ::TreeNode.are_equals(
          result[index],
          tree
        )
      )
    end
  end
end
