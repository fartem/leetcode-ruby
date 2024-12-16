# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/623_add_one_row_to_tree'
require 'minitest/autorun'

class AddOneRowToTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            1,
            ::TreeNode.new(
              2,
              ::TreeNode.new(3),
              ::TreeNode.new(1)
            ),
            nil
          ),
          ::TreeNode.new(
            1,
            nil,
            ::TreeNode.new(
              6,
              ::TreeNode.new(5),
              nil
            )
          )
        ),
        add_one_row(
          ::TreeNode.new(
            4,
            ::TreeNode.new(
              2,
              ::TreeNode.new(3),
              ::TreeNode.new(1)
            ),
            ::TreeNode.new(
              6,
              ::TreeNode.new(5),
              nil
            )
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
        ::TreeNode.new(
          4,
          ::TreeNode.new(
            2,
            ::TreeNode.new(
              1,
              ::TreeNode.new(3),
              nil
            ),
            ::TreeNode.new(
              1,
              nil,
              ::TreeNode.new(1)
            )
          ),
          nil
        ),
        add_one_row(
          ::TreeNode.new(
            4,
            ::TreeNode.new(
              2,
              ::TreeNode.new(3),
              ::TreeNode.new(1)
            ),
            nil
          ),
          1,
          3
        )
      )
    )
  end
end
