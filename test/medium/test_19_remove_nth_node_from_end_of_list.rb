# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/19_remove_nth_node_from_end_of_list'
require 'minitest/autorun'

class RemoveNthNodeFromEndOfListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 2, 3, 5]
        ),
        remove_nth_from_end(
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
        ::ListNode.from_array([]),
        remove_nth_from_end(
          ::ListNode.from_array([1]),
          1
        )
      )
    )
  end

  def test_default_three
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([1]),
        remove_nth_from_end(
          ::ListNode.from_array([1, 2]),
          1
        )
      )
    )
  end
end
