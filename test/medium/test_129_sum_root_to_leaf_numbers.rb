# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/129_sum_root_to_leaf_numbers'
require 'minitest/autorun'

class SumRootToLeafNumbersTest < ::Minitest::Test
  def test_default
    assert_equal(
      25,
      sum_numbers(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          ::TreeNode.new(3)
        )
      )
    )
    assert_equal(
      1026,
      sum_numbers(
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            9,
            ::TreeNode.new(5),
            ::TreeNode.new(1)
          ),
          ::TreeNode.new(0)
        )
      )
    )
  end
end
