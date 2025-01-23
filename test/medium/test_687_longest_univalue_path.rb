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
        ::TreeNode.build_tree(
          [5, 4, 5, 1, 1, nil, 5]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      longest_univalue_path(
        ::TreeNode.build_tree(
          [1, 4, 5, 4, 4, nil, 5]
        )
      )
    )
  end
end
