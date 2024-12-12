# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/606_construct_string_from_binary_tree'
require 'minitest/autorun'

class ConstructStringFromBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      '1(2(4))(3)',
      tree2str(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            nil
          ),
          ::TreeNode.new(3)
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      '1(2()(4))(3)',
      tree2str(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(3)
        )
      )
    )
  end
end
