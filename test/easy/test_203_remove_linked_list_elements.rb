# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/easy/203_remove_linked_list_elements'
require 'minitest/autorun'

class RemoveLinkedListElementsTest < ::Minitest::Test
  def test_default
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([1, 2, 3, 4, 5]),
        remove_elements(
          ::ListNode.from_array([1, 2, 6, 3, 4, 5, 6]),
          6
        )
      )
    )
    assert_nil(remove_elements(nil, 1))
    assert_nil(
      remove_elements(
        ::ListNode.from_array(
          [7, 7, 7, 7]
        ),
        7
      )
    )
  end
end
