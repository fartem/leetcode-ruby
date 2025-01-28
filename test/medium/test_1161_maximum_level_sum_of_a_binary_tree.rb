# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1161_maximum_level_sum_of_a_binary_tree'
require 'minitest/autorun'

class MaximumLevelSumOfABinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      max_level_sum(
        ::TreeNode.build_tree(
          [1, 7, 0, 7, -8, nil, nil]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      max_level_sum(
        ::TreeNode.build_tree(
          [989, nil, 10_250, 98_693, -89_388, nil, nil, nil, -32_127]
        )
      )
    )
  end
end
