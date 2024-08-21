# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/common/linked_list'
require_relative '../../lib/medium/142_linked_list_cycle_ii'
require 'minitest/autorun'

class LinkedListCycleIITest < ::Minitest::Test
  def test_default_one
    start = ::ListNode.new(2)
    middle = ::ListNode.new(0)
    start.next = middle
    middle.next = ::ListNode.new(-4, start)
    head = ::ListNode.new(3, start)

    assert_equal(
      start,
      detect_cycle(
        head
      )
    )
  end

  def test_default_two
    start = ::ListNode.new(1)
    nd = ::ListNode.new(2)
    start.next = nd
    nd.next = start

    assert_equal(
      start,
      detect_cycle(
        start
      )
    )
  end

  def test_default_three
    assert_nil(
      detect_cycle(
        ::ListNode.new(1)
      )
    )
  end
end
