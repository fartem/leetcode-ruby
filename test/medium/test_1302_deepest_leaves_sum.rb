# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/1302_deepest_leaves_sum'
require 'minitest/autorun'

class DeepestLeavesSumTest < ::Minitest::Test
  def test_case_one
    assert_equal(
      15,
      deepest_leaves_sum(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, 5, nil, 6, 7, nil, nil, nil, nil, 8]
        )
      )
    )
  end

  def test_case_two
    assert_equal(
      19,
      deepest_leaves_sum(
        ::TreeNode.build_tree(
          [6, 7, 8, 2, 7, 1, 3, 9, nil, 1, 4, nil, nil, nil, 5]
        )
      )
    )
  end
end
