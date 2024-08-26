# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/147_insertion_sort_list'
require 'minitest/autorun'

class LRUCacheTest < ::Minitest::Test
  def test_default_one
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [1, 2, 3, 4]
        ),
        insertion_sort_list(
          ::ListNode.from_array(
            [4, 2, 1, 3]
          )
        )
      )
    )
  end

  def test_default_two
    assert(
      ::ListNode.are_equals(
        ::ListNode.from_array(
          [-1, 0, 3, 4, 5]
        ),
        insertion_sort_list(
          ::ListNode.from_array(
            [-1, 5, 3, 4, 0]
          )
        )
      )
    )
  end
end
