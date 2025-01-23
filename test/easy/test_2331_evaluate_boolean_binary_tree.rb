# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/2331_evaluate_boolean_binary_tree'
require 'minitest/autorun'

class EvaluateBooleanBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      evaluate_tree(
        ::TreeNode.build_tree(
          [2, 1, 3, nil, nil, 0, 1]
        )
      )
    )
  end

  def test_default_two
    assert(
      !evaluate_tree(
        ::TreeNode.build_tree(
          [0]
        )
      )
    )
  end

  def test_additional_one
    assert(
      !evaluate_tree(
        ::TreeNode.build_tree(
          [3, 0, 1]
        )
      )
    )
  end
end
