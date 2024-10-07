# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/237_delete_node_in_a_linked_list'
require 'minitest/autorun'

class DeleteNodeInALinkedListTest < ::Minitest::Test
  def test_default_one
    input = ::ListNode.from_array(
      [4, 5, 1, 9]
    )
    delete_node(input.next)

    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [4, 1, 9]
        ),
        input
      )
    )
  end

  def test_default_two
    input = ::ListNode.from_array(
      [4, 5, 1, 9]
    )
    delete_node(input.next.next)

    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [4, 5, 9]
        ),
        input
      )
    )
  end
end
