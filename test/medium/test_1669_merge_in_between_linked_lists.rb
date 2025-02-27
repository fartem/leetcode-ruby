# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/1669_merge_in_between_linked_lists'
require 'minitest/autorun'

class MergeInBetweenLinkedListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [10, 1, 13, 1_000_000, 1_000_001, 1_000_002, 5]
        ),
        merge_in_between(
          ::ListNode.from_array(
            [10, 1, 13, 6, 9, 5]
          ),
          3,
          4,
          ::ListNode.from_array(
            [1_000_000, 1_000_001, 1_000_002]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [0, 1, 1_000_000, 1_000_001, 1_000_002, 1_000_003, 1_000_004, 6]
        ),
        merge_in_between(
          ::ListNode.from_array(
            [0, 1, 2, 3, 4, 5, 6]
          ),
          2,
          5,
          ::ListNode.from_array(
            [1_000_000, 1_000_001, 1_000_002, 1_000_003, 1_000_004]
          )
        )
      )
    )
  end
end
