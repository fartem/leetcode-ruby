# frozen_string_literal: true

require_relative '../../lib/easy/101_symmetric_tree'
require_relative '../../lib/common/binary_tree'
require 'minitest/autorun'

class SymmetricTreeTest < ::Minitest::Test
  def test_default
    assert(
      is_symmetric(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(3),
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            ::TreeNode.new(3)
          )
        )
      )
    )
    assert(
      !is_symmetric(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(3)
          ),
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(3)
          )
        )
      )
    )
  end
end
