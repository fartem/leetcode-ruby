# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/2095_delete_the_middle_node_of_a_linked_list'
require 'minitest/autorun'

class DeleteTheMiddleNodeOfALinkedListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 3, 4, 1, 2, 6]
        ),
        delete_middle(
          ::ListNode.from_array(
            [1, 3, 4, 7, 1, 2, 6]
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
        delete_middle(
          ::ListNode.from_array(
            [1, 2, 3, 4]
          )
        )
      )
    )
  end

  def test_default_three
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [2]
        ),
        delete_middle(
          ::ListNode.from_array(
            [2, 1]
          )
        )
      )
    )
  end
end
