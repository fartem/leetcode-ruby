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
        ::TreeNode.new(
          0,
          ::TreeNode.new(
            1,
            ::TreeNode.new(3),
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(
            2,
            ::TreeNode.new(3),
            ::TreeNode.new(4)
          )
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      'adz',
      smallest_from_leaf(
        ::TreeNode.new(
          25,
          ::TreeNode.new(
            1,
            ::TreeNode.new(1),
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(
            3,
            ::TreeNode.new(0),
            ::TreeNode.new(2)
          )
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      'abc',
      smallest_from_leaf(
        ::TreeNode.new(
          2,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(
              1,
              ::TreeNode.new(0),
              nil
            )
          ),
          ::TreeNode.new(
            1,
            ::TreeNode.new(0),
            nil
          )
        )
      )
    )
  end
end
