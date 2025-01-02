# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/hard/23_merge_k_sorted_lists'
require 'minitest/autorun'

class MergeKSortedListsTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 1, 2, 3, 4, 4, 5, 6]
        ),
        merge_k_lists(
          [
            ::ListNode.from_array(
              [1, 4, 5]
            ),
            ::ListNode.from_array(
              [1, 3, 4]
            ),
            ::ListNode.from_array(
              [2, 6]
            )
          ]
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([]),
        merge_k_lists([])
      )
    )
  end

  def test_default_three
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([]),
        merge_k_lists(
          [
            ::ListNode.from_array([])
          ]
        )
      )
    )
  end
end
