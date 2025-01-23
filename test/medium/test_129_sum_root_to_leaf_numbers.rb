# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/129_sum_root_to_leaf_numbers'
require 'minitest/autorun'

class SumRootToLeafNumbersTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      25,
      sum_numbers(
        ::TreeNode.build_tree(
          [1, 2, 3]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      1026,
      sum_numbers(
        ::TreeNode.build_tree(
          [4, 9, 0, 5, 1]
        )
      )
    )
  end
end
