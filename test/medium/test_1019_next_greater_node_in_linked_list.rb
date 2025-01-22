# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/1019_next_greater_node_in_linked_list'
require 'minitest/autorun'

class NextGreaterNodeInLinkedListTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [5, 5, 0],
      next_larger_nodes(
        ::ListNode.from_array(
          [2, 1, 5]
        )
      )
    )
  end

  def test_default_two
    assert_equal(
      [7, 0, 5, 5, 0],
      next_larger_nodes(
        ::ListNode.from_array(
          [2, 7, 4, 3, 5]
        )
      )
    )
  end
end
