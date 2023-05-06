# frozen_string_literal: true

require_relative '../../lib/easy/21_merge_two_sorted_lists'
require 'minitest/autorun'

class MergeTwoSortedListsTest < ::Minitest::Test
  def test_default
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([1, 1, 2, 3, 4, 4]),
        merge_two_lists(
          ::ListNode.from_array([1, 2, 4]),
          ::ListNode.from_array([1, 3, 4])
        )
      )
    )
    assert(
      merge_two_lists(
        ::ListNode.from_array([]),
        ::ListNode.from_array([])
      ).nil?
    )
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([0]),
        merge_two_lists(
          ::ListNode.from_array([]),
          ::ListNode.from_array([0])
        )
      )
    )
  end
end
