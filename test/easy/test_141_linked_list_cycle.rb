# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/easy/141_linked_list_cycle'
require 'minitest/autorun'

class LinkedListCycleTest < ::Minitest::Test
  def test_default_one
    fourth = ::ListNode.new(-4)
    third = ::ListNode.new(0, fourth)
    second = ::ListNode.new(2, third)
    first = ::ListNode.new(3, second)
    fourth.next = second
    assert(has_cycle(first))
  end

  def test_default_two
    second = ::ListNode.new(2)
    first = ::ListNode.new(1, second)
    second.next = first
    assert(has_cycle(first))
  end

  def test_default_three = assert(!has_cycle(::ListNode.new(1)))
end
