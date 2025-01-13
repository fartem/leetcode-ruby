# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/919_complete_binary_tree_inserter'
require 'minitest/autorun'

class CompleteBinaryTreeInserterTest < ::Minitest::Test
  def test_default_one
    cbt_inserter = ::CBTInserter.new(
      ::TreeNode.new(
        1,
        ::TreeNode.new(2),
        nil
      )
    )

    assert_equal(1, cbt_inserter.insert(3))
    assert_equal(2, cbt_inserter.insert(4))

    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            nil
          ),
          ::TreeNode.new(3)
        ),
        cbt_inserter.get_root
      )
    )
  end
end
