# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/979_distribute_coins_in_binary_tree'
require 'minitest/autorun'

class DistributeCoinsToBinaryTreeTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      distribute_coins(
        ::TreeNode.build_tree(
          [3, 0, 0]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      distribute_coins(
        ::TreeNode.build_tree(
          [0, 3, 0]
        )
      )
    )
  end
end
