# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1315_sum_of_nodes_with_even_valued_grandparent'
require 'minitest/autorun'

class SumOfNodesWithEvenValuedGrandparentTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      18,
      sum_even_grandparent(
        ::TreeNode.build_tree(
          [6, 7, 8, 2, 7, 1, 3, 9, nil, 1, 4, nil, nil, nil, 5]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      sum_even_grandparent(
        ::TreeNode.build_tree(
          [1]
        )
      )
    )
  end
end
