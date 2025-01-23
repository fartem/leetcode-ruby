# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/95_unique_binary_search_trees_ii'
require 'minitest/autorun'

class UniqueBinarySearchTreesIITest < ::Minitest::Test
  def test_default_one
    input = [
      ::TreeNode.build_tree(
        [1, nil, 2, nil, 3]
      ),
      ::TreeNode.build_tree(
        [1, nil, 3, 2]
      ),
      ::TreeNode.build_tree(
        [2, 1, 3]
      ),
      ::TreeNode.build_tree(
        [3, 1, nil, nil, 2]
      ),
      ::TreeNode.build_tree(
        [3, 2, nil, 1]
      )
    ]
    output = generate_trees(3)

    assert_equal(input.length, output.length)

    (0..input.length).each do |i|
      assert(
        ::TreeNode.are_equals(
          input[i],
          output[i]
        )
      )
    end
  end

  def test_default_two
    input = [
      ::TreeNode.build_tree(
        [1]
      )
    ]
    output = generate_trees(1)

    assert_equal(input.length, output.length)

    (0..input.length).each do |i|
      assert(
        ::TreeNode.are_equals(
          input[i],
          output[i]
        )
      )
    end
  end
end
