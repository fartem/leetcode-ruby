# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/160_intersection_of_two_linked_lists'
require_relative '../../lib/common/linked_list'
require 'minitest/autorun'

class IntersectionOfTwoLinkedListsTest < ::Minitest::Test
  def test_default
    intersection = ::ListNode.from_array([8, 4, 5])
    head_a = ::ListNode.from_array([4, 1])
    head_a.next = intersection
    head_b = ::ListNode.from_array([5, 6, 1])
    head_b.next = intersection
    assert_equal(
      intersection,
      get_intersection_node(
        head_a,
        head_b
      )
    )

    intersection = ::ListNode.from_array([2, 4])
    head_a = ::ListNode.from_array([1, 9, 1])
    head_a.next = intersection
    head_b = ::ListNode.new(3)
    head_b.next = intersection
    assert_equal(
      intersection,
      get_intersection_node(
        head_a,
        head_b
      )
    )

    assert_nil(
      get_intersection_node(
        ::ListNode.from_array([2, 6, 4]),
        ::ListNode.from_array([1, 5])
      )
    )
  end
end
