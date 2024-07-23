# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/82_remove_duplicates_from_sorted_list_ii'
require 'minitest/autorun'

class RemoveDuplicatesFromSortedListIITest < ::Minitest::Test
  def test_default
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 2, 5]
        ),
        delete_duplicates82(
          ::ListNode.from_array(
            [1, 2, 3, 3, 4, 4, 5]
          )
        )
      )
    )
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([2, 3]),
        delete_duplicates82(
          ::ListNode.from_array(
            [1, 1, 1, 2, 3]
          )
        )
      )
    )
  end
end
