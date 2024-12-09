# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/medium/538_convert_bst_to_greater_tree'
require 'minitest/autorun'

class ConvertBstToGreaterTreeTest < ::Minitest::Test
  def test_default_one
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          30,
          ::TreeNode.new(
            36,
            ::TreeNode.new(36),
            ::TreeNode.new(
              35,
              nil,
              ::TreeNode.new(33)
            )
          ),
          ::TreeNode.new(
            21,
            ::TreeNode.new(26),
            ::TreeNode.new(
              15,
              nil,
              ::TreeNode.new(8)
            )
          )
        ),
        convert_bst(
          ::TreeNode.new(
            4,
            ::TreeNode.new(
              1,
              ::TreeNode.new(0),
              ::TreeNode.new(
                2,
                nil,
                ::TreeNode.new(3)
              )
            ),
            ::TreeNode.new(
              6,
              ::TreeNode.new(5),
              ::TreeNode.new(
                7,
                nil,
                ::TreeNode.new(8)
              )
            )
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(1)
        ),
        convert_bst(
          ::TreeNode.new(
            0,
            nil,
            ::TreeNode.new(1)
          )
        )
      )
    )
  end
end
