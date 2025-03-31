# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/2265_count_nodes_equal_to_average_of_subtree'
require 'minitest/autorun'

class CountNodesEqualToAverageOfSubtreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      5,
      average_of_subtree(
        ::TreeNode.build_tree(
          [4, 8, 5, 0, 1, nil, 6]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      average_of_subtree(
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end
end
