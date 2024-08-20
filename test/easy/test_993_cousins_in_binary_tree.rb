# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/993_cousins_in_binary_tree'
require 'minitest/autorun'

class CousinsInBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      !is_cousins(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(3)
        ),
        4,
        3
      )
    )
  end

  def test_default_two
    assert(
      is_cousins(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(
            3,
            nil,
            ::TreeNode.new(5)
          )
        ),
        5,
        4
      )
    )
  end

  def test_default_three
    assert(
      !is_cousins(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(3)
        ),
        2,
        3
      )
    )
  end
end
