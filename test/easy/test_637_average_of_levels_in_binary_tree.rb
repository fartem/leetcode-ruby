# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/637_average_of_levels_in_binary_tree'
require 'minitest/autorun'

class AverageOfLevelsInBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        3.00000,
        14.50000,
        11.00000
      ],
      average_of_levels(
        ::TreeNode.build_tree(
          [3, 9, 20, nil, nil, 15, 7]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        3.00000,
        14.50000,
        11.00000
      ],
      average_of_levels(
        ::TreeNode.build_tree(
          [3, 9, 20, 15, 7]
        )
      )
    )
  end
end
