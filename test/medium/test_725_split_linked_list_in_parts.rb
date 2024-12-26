# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/725_split_linked_list_in_parts'
require 'minitest/autorun'

class SplitLinkedListInPartsTest < ::Minitest::Test
  def test_default_one
    result = split_list_to_parts(
      ::ListNode.from_array(
        [1, 2, 3]
      ),
      5
    )

    assert_equal(5, result.size)

    [
      ::ListNode.from_array([1]),
      ::ListNode.from_array([2]),
      ::ListNode.from_array([3]),
      ::ListNode.from_array([]),
      ::ListNode.from_array([])
    ].each_with_index do |list, index|
      assert(
        ::ListNode.are_equals(
          list,
          result[index]
        )
      )
    end
  end

  def test_default_two
    result = split_list_to_parts(
      ::ListNode.from_array(
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      ),
      3
    )

    assert_equal(3, result.size)

    [
      ::ListNode.from_array(
        [1, 2, 3, 4]
      ),
      ::ListNode.from_array(
        [5, 6, 7]
      ),
      ::ListNode.from_array(
        [8, 9, 10]
      )
    ].each_with_index do |list, index|
      assert(
        ::ListNode.are_equals(
          list,
          result[index]
        )
      )
    end
  end
end
