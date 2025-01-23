# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/2236_root_equals_sum_of_children'
require 'minitest/autorun'

class RootEqualsSumOfChildrenTest < ::Minitest::Test
  def test_default_one
    assert(
      check_tree(
        ::TreeNode.build_tree(
          [10, 4, 6]
        )
      )
    )
  end

  def test_default_two
    assert(
      !check_tree(
        ::TreeNode.build_tree(
          [5, 3, 1]
        )
      )
    )
  end
end
