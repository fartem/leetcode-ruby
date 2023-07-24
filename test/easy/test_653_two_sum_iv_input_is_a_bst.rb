# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/653_two_sum_iv_input_is_a_bst'
require 'minitest/autorun'

class TwoSumIVInputIsABSTTest < ::Minitest::Test
  def test_default
    assert(
      find_target(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            3,
            ::TreeNode.new(2),
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(
            6,
            nil,
            ::TreeNode.new(7)
          )
        ),
        9
      )
    )
    assert(
      !find_target(
        ::TreeNode.new(
          5,
          ::TreeNode.new(
            3,
            ::TreeNode.new(2),
            ::TreeNode.new(4)
          ),
          ::TreeNode.new(
            6,
            nil,
            ::TreeNode.new(7)
          )
        ),
        28
      )
    )
  end
end
