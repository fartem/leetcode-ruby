# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/687_longest_univalue_path'
require 'minitest/autorun'

class ValidParenthesisStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      longest_univalue_path(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            4,
            ::TreeNode.new(1),
            ::TreeNode.new(1)
          ),
          ::TreeNode.new(
            5,
            nil,
            ::TreeNode.new(5)
          )
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      longest_univalue_path(
        ::TreeNode.new(
          1,
          ::TreeNode.new(
            4,
            ::TreeNode.new(4),
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(
            5,
            nil,
            ::TreeNode.new(5)
          )
        )
      )
    )
  end
end
