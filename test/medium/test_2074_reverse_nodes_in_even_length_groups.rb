# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/2074_reverse_nodes_in_even_length_groups'
require 'minitest/autorun'

class ReverseNodesInEvenLengthGroupsTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [5, 6, 2, 3, 9, 1, 4, 8, 3, 7]
        ),
        reverse_even_length_groups(
          ::ListNode.from_array(
            [5, 2, 6, 3, 9, 1, 7, 3, 8, 4]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 0, 1, 6]
        ),
        reverse_even_length_groups(
          ::ListNode.from_array(
            [1, 1, 0, 6]
          )
        )
      )
    )
  end

  def test_default_three
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 0, 1, 5, 6]
        ),
        reverse_even_length_groups(
          ::ListNode.from_array(
            [1, 1, 0, 6, 5]
          )
        )
      )
    )
  end
end
