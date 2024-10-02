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
        ::TreeNode.new(
          3,
          ::TreeNode.new(
            1,
            nil,
            ::TreeNode.new(2)
          ),
          ::TreeNode.new(4)
        ),
        1
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      kth_smallest(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            3,
            ::TreeNode.new(
              2,
              ::TreeNode.new(1),
              nil
            ),
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(6)
        ),
        3
      )
    )
  end
end
