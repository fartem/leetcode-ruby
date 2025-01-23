# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/623_add_one_row_to_tree'
require 'minitest/autorun'

class AddOneRowToTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [4, 1, 1, 2, nil, nil, 6, 3, 1, 5]
        ),
        add_one_row(
          ::TreeNode.build_tree(
            [4, 2, 6, 3, 1, 5]
          ),
          1,
          2
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.build_tree(
          [4, 2, nil, 1, 1, 3, nil, nil, 1]
        ),
        add_one_row(
          ::TreeNode.build_tree(
            [4, 2, nil, 3, 1]
          ),
          1,
          3
        )
      )
    )
  end
end
