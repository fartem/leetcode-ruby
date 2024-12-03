# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/508_most_frequent_subtree_sum'
require 'minitest/autorun'

class MostFrequentSubtreeSumTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, -3, 4],
      find_frequent_tree_sum(
        ::TreeNode.new(
          5,
          ::TreeNode.new(2),
          ::TreeNode.new(-3)
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [2],
      find_frequent_tree_sum(
        ::TreeNode.new(
          5,
          ::TreeNode.new(2),
          ::TreeNode.new(-5)
        )
      )
    )
  end
end
