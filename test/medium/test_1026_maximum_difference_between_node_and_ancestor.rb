# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1026_maximum_difference_between_node_and_ancestor'
require 'minitest/autorun'

class MaximumDifferenceBetweenNodeAndAncestorTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      7,
      max_ancestor_diff(
        ::TreeNode.build_tree(
          [8, 3, 10, 1, 6, nil, 14, nil, nil, 4, 7, 13]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      max_ancestor_diff(
        ::TreeNode.build_tree(
          [1, nil, 2, nil, 0, 3]
        )
      )
    )
  end
end
