# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/n_ary_tree'
require_relative '../../lib/easy/590_n_ary_tree_postorder_traversal'
require 'minitest/autorun'

class NAryTreePostorderTraversalTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [5, 6, 3, 2, 4, 1],
      postorder(
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
      [2, 6, 14, 11, 7, 3, 12, 8, 4, 13, 9, 10, 5, 1],
      postorder(
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
