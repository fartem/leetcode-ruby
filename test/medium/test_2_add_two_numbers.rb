# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/2_add_two_numbers'
require 'minitest/autorun'

class AddTwoNumbersTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [7, 0, 8]
        ),
        add_two_numbers(
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

  def test_default_two
    assert(
      ::ListNode.from_array([0]),
      add_two_numbers(
        ::ListNode.from_array([0]),
        ::ListNode.from_array([0])
      )
    )
  end

  def test_default_three
    assert(
      ::ListNode.from_array(
        [8, 9, 9, 9, 0, 0, 0, 1]
      ),
      add_two_numbers(
        ::ListNode.from_array(
          [9, 9, 9, 9, 9, 9, 9]
        ),
        ::ListNode.from_array(
          [9, 9, 9, 9]
        )
      )
    )
  end

  def test_additional_one
    assert(
      ::ListNode.from_array(
        [8, 9, 9, 9, 0, 0, 0]
      ),
      add_two_numbers(
        ::ListNode.from_array(
          [9, 9, 9, 9, 9, 9, 2]
        ),
        ::ListNode.from_array(
          [9, 9, 9, 9]
        )
      )
    )
  end

  def test_additional_two
    assert(
      ::ListNode.from_array(
        [8, 9, 9, 9, 0, 0, 0]
      ),
      add_two_numbers(
        ::ListNode.from_array(
          [9, 9, 9, 9]
        ),
        ::ListNode.from_array(
          [9, 9, 9, 9, 9, 9, 2]
        )
      )
    )
  end
end
