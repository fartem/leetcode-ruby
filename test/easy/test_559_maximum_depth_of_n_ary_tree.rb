# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/n_ary_node'
require_relative '../../lib/easy/559_maximum_depth_of_n_ary_tree'
require 'minitest/autorun'

class MaximumDepthOfNAryTreeTest < ::Minitest::Test
  def test_default
    assert_equal(
      3,
      max_depth_of_n_ary_tree(
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
      5,
      max_depth_of_n_ary_tree(
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
