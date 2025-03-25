# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/2181_merge_nodes_in_between_zeros'
require 'minitest/autorun'

class MergeNodesInBetweenZerosTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [4, 11]
        ),
        merge_nodes2181(
          ::ListNode.from_array(
            [0, 3, 1, 0, 4, 5, 2, 0]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 3, 4]
        ),
        merge_nodes2181(
          ::ListNode.from_array(
            [0, 1, 0, 3, 0, 2, 2, 0]
          )
        )
      )
    )
  end
end
