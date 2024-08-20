# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/2331_evaluate_boolean_binary_tree'
require 'minitest/autorun'

class EvaluateBooleanBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      evaluate_tree(
        ::TreeNode.new(
          2,
          ::TreeNode.new(1),
          ::TreeNode.new(
            3,
            ::TreeNode.new(0),
            ::TreeNode.new(1)
          )
        )
      )
    )
    assert(
      !evaluate_tree(
        ::TreeNode.new(0)
      )
    )
  end

  def test_default_two
    assert(
      !evaluate_tree(
        ::TreeNode.new(0)
      )
    )
  end

  def test_additional_one
    assert(
      !evaluate_tree(
        ::TreeNode.new(
          3,
          ::TreeNode.new(0),
          ::TreeNode.new(1)
        )
      )
    )
  end
end
