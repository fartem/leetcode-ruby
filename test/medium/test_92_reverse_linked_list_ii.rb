# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/92_reverse_linked_list_ii'
require 'minitest/autorun'

class ReverseLinkedListIITest < ::Minitest::Test
  def test_default
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 4, 3, 2, 5]
        ),
        reverse_between(
          ::ListNode.from_array(
            [1, 2, 3, 4, 5]
          ),
          2,
          4
        )
      )
    )
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([5]),
        reverse_between(
          ::ListNode.from_array([5]),
          1,
          1
        )
      )
    )
  end
end
