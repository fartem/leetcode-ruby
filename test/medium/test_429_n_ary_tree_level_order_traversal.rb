# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/n_ary_tree'
require_relative '../../lib/medium/429_n_ary_tree_level_order_traversal'
require 'minitest/autorun'

class NAryTreeLevelOrderTraversalTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [1],
        [3, 2, 4],
        [5, 6]
      ],
      level_order429(
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
  end

  def test_default_two
    assert_equal(
      [
        [1],
        [2, 3, 4, 5],
        [6, 7, 8, 9, 10],
        [11, 12, 13],
        [14]
      ],
      level_order429(
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
                        ::NAryTree.new(
                          14
                        )
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
                    ::NAryTree.new(
                      12
                    )
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
                    ::NAryTree.new(
                      13
                    )
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
