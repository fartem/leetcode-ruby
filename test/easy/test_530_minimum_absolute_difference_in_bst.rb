# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/530_minimum_absolute_difference_in_bst'
require 'minitest/autorun'

class MinimumAbsoluteDifferenceInBSTTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      get_minimum_difference(
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            2,
            ::TreeNode.new(1),
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(6)
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      get_minimum_difference(
        ::TreeNode.new(
          1,
          ::TreeNode.new(0),
          ::TreeNode.new(
            48,
            ::TreeNode.new(12),
            ::TreeNode.new(49)
          )
        )
      )
    )
  end
end
