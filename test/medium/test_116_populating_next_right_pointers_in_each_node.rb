# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/next_tree_node'
require_relative '../../lib/medium/116_populating_next_right_pointers_in_each_node'
require 'minitest/autorun'

class PopulatingNextRightPointersInEachNodeTest < ::Minitest::Test
  def test_default_one
    l3n4 = ::NextTreeNode.new(7)
    l3n3 = ::NextTreeNode.new(6, nil, nil, l3n4)
    l3n2 = ::NextTreeNode.new(5, nil, nil, l3n3)
    l3n1 = ::NextTreeNode.new(4, nil, nil, l3n2)

    l2n2 = ::NextTreeNode.new(3, l3n3, l3n4)
    l2n1 = ::NextTreeNode.new(2, l3n1, l3n2, l2n2)

    assert(
      ::NextTreeNode.are_equals(
        ::NextTreeNode.new(
          1,
          l2n1,
          l2n2
        ),
        connect(
          ::NextTreeNode.new(
            1,
            ::NextTreeNode.new(
              2,
              ::NextTreeNode.new(4),
              ::NextTreeNode.new(5)
            ),
            ::NextTreeNode.new(
              3,
              ::NextTreeNode.new(6),
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
        connect(nil)
      )
    )
  end
end
