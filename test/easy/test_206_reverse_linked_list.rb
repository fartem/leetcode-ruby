# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/easy/206_reverse_linked_list'
require 'minitest/autorun'

class ReverseLinkedListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [5, 4, 3, 2, 1]
        ),
        reverse_list(
          ::ListNode.from_array(
            [1, 2, 3, 4, 5]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [2, 1]
        ),
        reverse_list(
          ::ListNode.from_array(
            [1, 2]
          )
        )
      )
    )
  end

  def test_default_three = assert_nil(reverse_list(nil))
end
