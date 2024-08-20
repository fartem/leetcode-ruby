# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/563_binary_tree_tilt'
require 'minitest/autorun'

class BinaryTreeTiltTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      find_tilt(
        ::TreeNode.new(
          1,
          ::TreeNode.new(2),
          ::TreeNode.new(3)
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      15,
      find_tilt(
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            2,
            ::TreeNode.new(3),
            ::TreeNode.new(5)
          ),
          ::TreeNode.new(
            9,
            nil,
            ::TreeNode.new(7)
          )
        )
      )
    )
  end

  def test_default_three
    assert_equal(
      9,
      find_tilt(
        ::TreeNode.new(
          21,
          ::TreeNode.new(
            7,
            ::TreeNode.new(
              1,
              ::TreeNode.new(3),
              ::TreeNode.new(3)
            ),
            ::TreeNode.new(1)
          ),
          ::TreeNode.new(
            14,
            ::TreeNode.new(2),
            ::TreeNode.new(2)
          )
        )
      )
    )
  end
end
