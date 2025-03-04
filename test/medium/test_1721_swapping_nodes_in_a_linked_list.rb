# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/1721_swapping_nodes_in_a_linked_list'
require 'minitest/autorun'

class SwappingNodesInALindedListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 4, 3, 2, 5]
        ),
        swap_nodes(
          ::ListNode.from_array(
            [1, 2, 3, 4, 5]
          ),
          2
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [7, 9, 6, 6, 8, 7, 3, 0, 9, 5]
        ),
        swap_nodes(
          ::ListNode.from_array(
            [7, 9, 6, 6, 7, 8, 3, 0, 9, 5]
          ),
          5
        )
      )
    )
  end
end
