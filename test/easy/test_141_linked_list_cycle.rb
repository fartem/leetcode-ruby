# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/141_linked_list_cycle'
require_relative '../../lib/common/linked_list'
require 'minitest/autorun'

class LinkedListCycleTest < ::Minitest::Test
  def test_default
    fourth = ::ListNode.new(-4)
    third = ::ListNode.new(0, fourth)
    second = ::ListNode.new(2, third)
    first = ::ListNode.new(3, second)
    fourth.next = second
    assert(has_cycle(first))

    second = ::ListNode.new(2)
    first = ::ListNode.new(1, second)
    second.next = first
    assert(has_cycle(first))

    assert(!has_cycle(::ListNode.new(1)))
  end
end
