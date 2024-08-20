# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/86_partition_list'
require 'minitest/autorun'

class PartitionListTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 2, 2, 4, 3, 5]
        ),
        partition(
          ::ListNode.from_array(
            [1, 4, 3, 2, 5, 2]
          ),
          3
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 2]
        ),
        partition(
          ::ListNode.from_array(
            [2, 1]
          ),
          2
        )
      )
    )
  end
end
