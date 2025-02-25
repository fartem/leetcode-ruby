# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1530_number_of_good_leaf_nodes_pairs'
require 'minitest/autorun'

class NumberOfGoodLeafNodesPairsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      count_good_pairs(
        ::TreeNode.build_tree(
          [1, 2, 3, nil, 4]
        ),
        3
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      count_good_pairs(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, 5, 6, 7]
        ),
        3
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      count_good_pairs(
        ::TreeNode.build_tree(
          [7, 1, 4, 6, nil, 5, 3, nil, nil, nil, nil, nil, 2]
        ),
        3
      )
    )
  end
end
