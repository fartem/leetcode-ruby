# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/988_smallest_string_starting_from_leaf'
require 'minitest/autorun'

class SmallestStringStartingFromLeafTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'dba',
      smallest_from_leaf(
        ::TreeNode.build_tree(
          [0, 1, 2, 3, 4, 3, 4]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      'adz',
      smallest_from_leaf(
        ::TreeNode.build_tree(
          [25, 1, 3, 1, 3, 0, 2]
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      'abc',
      smallest_from_leaf(
        ::TreeNode.build_tree(
          [2, 2, 1, nil, 1, 0, nil, 0]
        )
      )
    )
  end
end
