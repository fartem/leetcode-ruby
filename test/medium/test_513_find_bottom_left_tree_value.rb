# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/513_find_bottom_left_tree_value'
require 'minitest/autorun'

class FindBottomLeftTreeValueTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      find_bottom_left_value(
        ::TreeNode.build_tree(
          [2, 1, 3]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      7,
      find_bottom_left_value(
        ::TreeNode.build_tree(
          [1, 2, 3, 4, nil, 5, 6, nil, nil, 7]
        )
      )
    )
  end
end
