# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/653_two_sum_iv_input_is_a_bst'
require 'minitest/autorun'

class TwoSumIVInputIsABSTTest < ::Minitest::Test
  def test_default_one
    assert(
      find_target(
        ::TreeNode.build_tree(
          [5, 3, 6, 2, 4, nil, 7]
        ),
        9
      )
    )
  end

  def test_default_two
    assert(
      !find_target(
        ::TreeNode.build_tree(
          [5, 3, 6, 2, 4, nil, 7]
        ),
        28
      )
    )
  end
end
