# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/404_sum_of_left_leaves'
require 'minitest/autorun'

class SumOfLeftLeavesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      24,
      sum_of_left_leaves(
        ::TreeNode.build_tree(
          [3, 9, 20, nil, nil, 15, 7]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      sum_of_left_leaves(
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end

  def test_additional_one
    assert_equal(
      4,
      sum_of_left_leaves(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, 5]
        )
      )
    )
  end
end
