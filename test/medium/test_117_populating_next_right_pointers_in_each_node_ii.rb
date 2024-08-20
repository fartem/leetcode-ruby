# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/next_tree_node'
require_relative '../../lib/medium/117_populating_next_right_pointers_in_each_node_ii'
require 'minitest/autorun'

class PopulatingNextRightPointersInEachNodeIITest < ::Minitest::Test
  def test_default_one
    ntn3 = ::NextTreeNode.new(3)
    ntn5 = ::NextTreeNode.new(5)
    ntn7 = ::NextTreeNode.new(7)
    ntn3.right = ntn7
    ntn5.next = ntn7

    assert(
      ::NextTreeNode.are_equals(
        ::NextTreeNode.new(
          1,
          ::NextTreeNode.new(
            2,
            ::NextTreeNode.new(
              4,
              nil,
              nil,
              ntn5
            ),
            ntn5,
            ntn3
          ),
          ntn3
        ),
        connect117(
          ::NextTreeNode.new(
            1,
            ::NextTreeNode.new(
              2,
              ::NextTreeNode.new(4),
              ::NextTreeNode.new(5)
            ),
            ::NextTreeNode.new(
              3,
              nil,
              ::NextTreeNode.new(7)
            )
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::NextTreeNode.are_equals(
        nil,
        connect117(nil)
      )
    )
  end
end
