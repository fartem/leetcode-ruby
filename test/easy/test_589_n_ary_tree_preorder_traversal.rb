# frozen_string_literal: true

# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/n_ary_tree'
require_relative '../../lib/easy/589_n_ary_tree_preorder_traversal'
require 'minitest/autorun'

class NAryTreePreorderTraversalTest < ::Minitest::Test
  def test_default
    assert_equal(
      [1, 3, 5, 6, 2, 4],
      preorder(
        ::NAryTree.new(
          1,
          [
            ::NAryTree.new(
              3,
              [
                ::NAryTree.new(5),
                ::NAryTree.new(6)
              ]
            ),
            ::NAryTree.new(2),
            ::NAryTree.new(4)
          ]
        )
      )
    )
    assert_equal(
      [1, 2, 3, 6, 7, 11, 14, 4, 8, 12, 5, 9, 13, 10],
      preorder(
        ::NAryTree.new(
          1,
          [
            ::NAryTree.new(2),
            ::NAryTree.new(
              3,
              [
                ::NAryTree.new(6),
                ::NAryTree.new(
                  7,
                  [
                    ::NAryTree.new(
                      11,
                      [
                        ::NAryTree.new(14)
                      ]
                    )
                  ]
                )
              ]
            ),
            ::NAryTree.new(
              4,
              [
                ::NAryTree.new(
                  8,
                  [
                    ::NAryTree.new(12)
                  ]
                )
              ]
            ),
            ::NAryTree.new(
              5,
              [
                ::NAryTree.new(
                  9,
                  [
                    ::NAryTree.new(13)
                  ]
                ),
                ::NAryTree.new(10)
              ]
            )
          ]
        )
      )
    )
  end
end
