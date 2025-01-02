# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/hard/25_reverse_nodes_in_k_group'
require 'minitest/autorun'

class ReverseNodesInKGroupTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [2, 1, 4, 3, 5]
        ),
        reverse_k_group(
          ::ListNode.from_array(
            [1, 2, 3, 4, 5]
          ),
          2
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [3, 2, 1, 4, 5]
        ),
        reverse_k_group(
          ::ListNode.from_array(
            [1, 2, 3, 4, 5]
          ),
          3
        )
      )
    )
  end
end
