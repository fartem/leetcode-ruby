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
        ::TreeNode.build_tree(
          [4, 2, 6, 1, 3]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      get_minimum_difference(
        ::TreeNode.build_tree(
          [1, 0, 48, nil, nil, 12, 49]
        )
      )
    )
  end
end
