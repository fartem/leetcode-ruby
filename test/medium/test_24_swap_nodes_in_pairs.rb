# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/24_swap_nodes_in_pairs'
require 'minitest/autorun'

class SwapNodesInPairsTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [2, 1, 4, 3]
        ),
        swap_pairs(
          ::ListNode.from_array(
            [1, 2, 3, 4]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([]),
        swap_pairs(
          ::ListNode.from_array([])
        )
      )
    )
  end

  def test_default_three
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
