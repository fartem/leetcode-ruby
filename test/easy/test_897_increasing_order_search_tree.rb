# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/binary_tree'
require_relative '../../lib/easy/897_increasing_order_search_tree'
require 'minitest/autorun'

class IncreasingOrderSearchTreeTest < ::Minitest::Test
  def test_default
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            2,
            nil,
            ::TreeNode.new(
              3,
              nil,
              ::TreeNode.new(
                4,
                nil,
                ::TreeNode.new(
                  5,
                  nil,
                  ::TreeNode.new(
                    6,
                    nil,
                    ::TreeNode.new(
                      7,
                      nil,
                      ::TreeNode.new(
                        8,
                        nil,
                        ::TreeNode.new(9)
                      )
                    )
                  )
                )
              )
            )
          )
        ),
        increasing_bst(
          ::TreeNode.new(
            5,
            ::TreeNode.new(
              3,
              ::TreeNode.new(
                2,
                ::TreeNode.new(1),
                nil
              ),
              ::TreeNode.new(4)
            ),
            ::TreeNode.new(
              6,
              nil,
              ::TreeNode.new(
                8,
                ::TreeNode.new(7),
                ::TreeNode.new(9)
              )
            )
          )
        )
      )
    )
    assert(
      ::TreeNode.are_equals(
        ::TreeNode.new(
          1,
          nil,
          ::TreeNode.new(
            5,
            nil,
            ::TreeNode.new(7)
          )
        ),
        increasing_bst(
          ::TreeNode.new(
            5,
            ::TreeNode.new(1),
            ::TreeNode.new(7)
          )
        )
      )
    )
  end
end
