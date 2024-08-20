# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/1022_sum_of_root_to_leaf_binary_numbers'
require 'minitest/autorun'

class SumOfRootToLeafBinaryNumbersTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      22,
      sum_root_to_leaf(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            0,
            ::TreeNode.new(0),
            ::TreeNode.new(1)
          ),
          ::TreeNode.new(
            1,
            ::TreeNode.new(0),
            ::TreeNode.new(1)
          )
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      sum_root_to_leaf(
        ::TreeNode.new(0)
      )
    )
  end
end
