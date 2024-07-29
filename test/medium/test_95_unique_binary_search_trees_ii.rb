# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/95_unique_binary_search_trees_ii'
require 'minitest/autorun'

class UniqueBinarySearchTreesIITest < ::Minitest::Test
  def test_default
    input = [
      ::TreeNode.new(
        1,
        nil,
        ::TreeNode.new(
          2,
          nil,
          ::TreeNode.new(3)
        )
      ),
      ::TreeNode.new(
        1,
        nil,
        ::TreeNode.new(
          3,
          ::TreeNode.new(2),
          nil
        )
      ),
      ::TreeNode.new(
        2,
        ::TreeNode.new(1),
        ::TreeNode.new(3)
      ),
      ::TreeNode.new(
        3,
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(2)
        ),
        nil
      ),
      ::TreeNode.new(
        3,
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          nil
        ),
        nil
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

    input = [::TreeNode.new(1)]
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
