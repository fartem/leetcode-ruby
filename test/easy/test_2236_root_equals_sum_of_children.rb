# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2236_root_equals_sum_of_children'
require_relative '../../lib/common/binary_tree'
require 'minitest/autorun'

class RootEqualsSumOfChildrenTest < ::Minitest::Test
  def test_default
    assert(
      check_tree(
        ::TreeNode.new(
          10,
          ::TreeNode.new(4),
          ::TreeNode.new(6)
        )
      )
    )
    assert(
      !check_tree(
        ::TreeNode.new(
          5,
          ::TreeNode.new(3),
          ::TreeNode.new(1)
        )
      )
    )
  end
end
