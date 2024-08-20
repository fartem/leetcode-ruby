# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/21_merge_two_sorted_lists'
require 'minitest/autorun'

class MergeTwoSortedListsTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 1, 2, 3, 4, 4]
        ),
        merge_two_lists(
          ::ListNode.from_array(
            [1, 2, 4]
          ),
          ::ListNode.from_array(
            [1, 3, 4]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      merge_two_lists(
        ::ListNode.from_array([]),
        ::ListNode.from_array([])
      ).nil?
    )
  end

  def test_default_three
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
