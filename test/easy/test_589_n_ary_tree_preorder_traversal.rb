# frozen_string_literal: true

# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/n_ary_node'
require_relative '../../lib/easy/589_n_ary_tree_preorder_traversal'
require 'minitest/autorun'

class NAryTreePreorderTraversalTest < ::Minitest::Test
  def test_default
    assert_equal(
      [1, 3, 5, 6, 2, 4],
      preorder(
        ::NAryNode.new(
          1,
          [
            ::NAryNode.new(
              3,
              [
                ::NAryNode.new(5),
                ::NAryNode.new(6)
              ]
            ),
            ::NAryNode.new(2),
            ::NAryNode.new(4)
          ]
        )
      )
    )
    assert_equal(
      [1, 2, 3, 6, 7, 11, 14, 4, 8, 12, 5, 9, 13, 10],
      preorder(
        ::NAryNode.new(
          1,
          [
            ::NAryNode.new(2),
            ::NAryNode.new(
              3,
              [
                ::NAryNode.new(6),
                ::NAryNode.new(
                  7,
                  [
                    ::NAryNode.new(
                      11,
                      [
                        ::NAryNode.new(14)
                      ]
                    )
                  ]
                )
              ]
            ),
            ::NAryNode.new(
              4,
              [
                ::NAryNode.new(
                  8,
                  [
                    ::NAryNode.new(12)
                  ]
                )
              ]
            ),
            ::NAryNode.new(
              5,
              [
                ::NAryNode.new(
                  9,
                  [
                    ::NAryNode.new(13)
                  ]
                ),
                ::NAryNode.new(10)
              ]
            )
          ]
        )
      )
    )
  end
end
