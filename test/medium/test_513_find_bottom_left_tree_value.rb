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
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          ::TreeNode.new(3)
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      7,
      find_bottom_left_value(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            nil
          ),
          ::TreeNode.new(
            3,
            ::TreeNode.new(
              5,
              ::TreeNode.new(7),
              nil
            ),
            ::TreeNode.new(6)
          )
        )
      )
    )
  end
end
