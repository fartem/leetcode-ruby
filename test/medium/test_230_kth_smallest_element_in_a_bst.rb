# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/230_kth_smallest_element_in_a_bst'
require 'minitest/autorun'

class KthSmallestElementInABSTTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      kth_smallest(
        ::TreeNode.build_tree(
          [3, 1, 4, nil, 2]
        ),
        1
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      kth_smallest(
        ::TreeNode.build_tree(
          [5, 3, 6, 2, 4, nil, nil, 1]
        ),
        3
      )
    )
  end
end
