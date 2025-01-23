# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/515_find_largest_value_in_each_tree_row'
require 'minitest/autorun'

class FindLargestValueInEachTreeRowTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, 3, 9],
      largest_values(
        ::TreeNode.build_tree(
          [1, 3, 2, 5, 3, nil, 9]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 3],
      largest_values(
        ::TreeNode.build_tree(
          [1, 2, 3]
        )
      )
    )
  end
end
