# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/538_convert_bst_to_greater_tree'
require 'minitest/autorun'

class ConvertBstToGreaterTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [30, 36, 21, 36, 35, 26, 15, nil, nil, nil, 33, nil, nil, nil, 8]
        ),
        convert_bst(
          ::TreeNode.build_tree(
            [4, 1, 6, 0, 2, 5, 7, nil, nil, nil, 3, nil, nil, nil, 8]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [1, nil, 1]
        ),
        convert_bst(
          ::TreeNode.build_tree(
            [0, nil, 1]
          )
        )
      )
    )
  end
end
