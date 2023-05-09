# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require 'minitest/autorun'

class LinkedListTest < ::Minitest::Test
  def test_default
    first = ::ListNode.from_array([1, 2, 3])
    second = ::ListNode.from_array([1, 2, 3])
    assert(::ListNode.are_equals(first, second))

    third = ::ListNode.from_array([1, 4, 5])
    assert(!::ListNode.are_equals(first, third))
    assert(!::ListNode.are_equals(second, third))
  end
end
