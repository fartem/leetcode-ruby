# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/1171_remove_zero_sum_consecutive_nodes_from_linked_list'
require 'minitest/autorun'

class RemoveZeroSumConsecutiveNodesFromLinkedListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [3, 1]
        ),
        remove_zero_sum_sublists(
          ::ListNode.from_array(
            [1, 2, -3, 3, 1]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 2, 4]
        ),
        remove_zero_sum_sublists(
          ::ListNode.from_array(
            [1, 2, 3, -3, 4]
          )
        )
      )
    )
  end

  def test_default_three
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1]
        ),
        remove_zero_sum_sublists(
          ::ListNode.from_array(
            [1, 2, 3, -3, -2]
          )
        )
      )
    )
  end
end
