# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/easy/876_middle_of_the_linked_list'
require 'minitest/autorun'

class MiddleOfTheLinkedListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [3, 4, 5]
        ),
        middle_node(
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
          [4, 5, 6]
        ),
        middle_node(
          ::ListNode.from_array(
            [1, 2, 3, 4, 5, 6]
          )
        )
      )
    )
  end
end
