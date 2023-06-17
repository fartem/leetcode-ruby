# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/404_sum_of_left_leaves'
require 'minitest/autorun'

class SumOfLeftLeavesTest < ::Minitest::Test
  def test_default
    assert_equal(
      24,
      sum_of_left_leaves(
        ::TreeNode.new(
          3,
          ::TreeNode.new(9),
          ::TreeNode.new(
            20,
            ::TreeNode.new(15),
            ::TreeNode.new(7)
          )
        )
      )
    )
    assert_equal(
      0,
      sum_of_left_leaves(
        ::TreeNode.new(1)
      )
    )
  end

  def test_additional
    assert_equal(
      4,
      sum_of_left_leaves(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            ::TreeNode.new(5)
          ),
          ::TreeNode.new(3)
        )
      )
    )
  end
end
