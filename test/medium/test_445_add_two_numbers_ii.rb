# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/445_add_two_numbers_ii'
require 'minitest/autorun'

class AddTwoNumbersIITest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [7, 8, 0, 7]
        ),
        add_two_numbers445(
          ::ListNode.from_array(
            [7, 2, 4, 3]
          ),
          ::ListNode.from_array(
            [5, 6, 4]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [8, 0, 7]
        ),
        add_two_numbers445(
          ::ListNode.from_array(
            [2, 4, 3]
          ),
          ::ListNode.from_array(
            [5, 6, 4]
          )
        )
      )
    )
  end

  def test_default_three
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array([0]),
        add_two_numbers445(
          ::ListNode.from_array([0]),
          ::ListNode.from_array([0])
        )
      )
    )
  end
end
