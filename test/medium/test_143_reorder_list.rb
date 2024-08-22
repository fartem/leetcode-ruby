# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/143_reorder_list'
require 'minitest/autorun'

class ReorderListTest < ::Minitest::Test
  def test_default_one
    input = ::ListNode.from_array(
      [1, 2, 3, 4]
    )
    reorder_list(input)

    assert(
      ::ListNode.are_equals(
        input,
        ::ListNode.from_array(
          [1, 4, 2, 3]
        )
      )
    )
  end

  def test_default_two
    input = ::ListNode.from_array(
      [1, 2, 3, 4, 5]
    )
    reorder_list(input)

    assert(
      ::ListNode.are_equals(
        input,
        ::ListNode.from_array(
          [1, 5, 2, 4, 3]
        )
      )
    )
  end
end
