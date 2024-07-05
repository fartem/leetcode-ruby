# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/24_swap_nodes_in_pairs'
require_relative '../../lib/common/linked_list'
require 'minitest/autorun'

class SwapNodesInPairsTest < ::Minitest::Test
  def test_default
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([2, 1, 4, 3]),
        swap_pairs(
          ::ListNode.from_array([1, 2, 3, 4])
        )
      )
    )
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([]),
        swap_pairs(
          ::ListNode.from_array([])
        )
      )
    )
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([1]),
        swap_pairs(
          ::ListNode.from_array([1])
        )
      )
    )
  end
end
