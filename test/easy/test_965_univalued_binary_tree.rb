# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/965_univalued_binary_tree'
require 'minitest/autorun'

class UnivaluedBinaryTreeTest < ::Minitest::Test
  def test_default
    assert(
      is_unival_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            1,
            ::TreeNode.new(1),
            ::TreeNode.new(1)
          ),
          ::TreeNode.new(
            1,
            nil,
            ::TreeNode.new(1)
          )
        )
      )
    )
    assert(
      !is_unival_tree(
        ::TreeNode.new(
          2,
          ::TreeNode.new(
            2,
            ::TreeNode.new(5),
            ::TreeNode.new(2)
          ),
          ::TreeNode.new(2)
        )
      )
    )
  end
end
