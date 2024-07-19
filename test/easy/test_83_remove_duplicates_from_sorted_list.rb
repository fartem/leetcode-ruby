# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/easy/83_remove_duplicates_from_sorted_list'
require 'minitest/autorun'

class RemoveDuplicatesFromSortedListTest < ::Minitest::Test
  def test_default
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([1, 2]),
        delete_duplicates(::ListNode.from_array([1, 1, 2]))
      )
    )
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([1, 2, 3]),
        delete_duplicates(::ListNode.from_array([1, 1, 2, 3, 3]))
      )
    )
  end
end
