# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/958_check_completeness_of_a_binary_tree'
require 'minitest/autorun'

class CheckCompletenessOfABinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      is_complete_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            ::TreeNode.new(5)
          ),
          ::TreeNode.new(
            3,
            ::TreeNode.new(6),
            nil
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      !is_complete_tree(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            2,
            ::TreeNode.new(4),
            ::TreeNode.new(5)
          ),
          ::TreeNode.new(
            3,
            nil,
            ::TreeNode.new(7)
          )
        )
      )
    )
  end
end
