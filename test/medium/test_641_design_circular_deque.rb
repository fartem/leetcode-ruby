# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/641_design_circular_deque'
require 'minitest/autorun'

class DesignCircularDequeTest < ::Minitest::Test
  def test_default_one
    my_circular_deque = ::MyCircularDeque.new(3)

    assert(my_circular_deque.insert_last(1))
    assert(my_circular_deque.insert_last(2))
    assert(my_circular_deque.insert_front(3))
    assert(!my_circular_deque.insert_front(4))

    assert_equal(2, my_circular_deque.get_rear)

    assert(my_circular_deque.is_full)
    assert(my_circular_deque.delete_last)
    assert(my_circular_deque.insert_front(4))

    assert_equal(4, my_circular_deque.get_front)
  end

  def test_additional_one
    my_circular_deque = ::MyCircularDeque.new(5)

    assert(my_circular_deque.insert_front(7))
    assert(my_circular_deque.insert_last(0))

    assert_equal(7, my_circular_deque.get_front)

    assert(my_circular_deque.insert_last(3))
    assert_equal(3, my_circular_deque.get_rear)

    assert(my_circular_deque.insert_front(9))

    assert_equal(3, my_circular_deque.get_rear)
    assert_equal(9, my_circular_deque.get_front)
    assert_equal(9, my_circular_deque.get_front)

    assert(my_circular_deque.delete_last)

    assert_equal(0, my_circular_deque.get_rear)

    assert(my_circular_deque.delete_last)
    assert(my_circular_deque.delete_last)

    assert(my_circular_deque.insert_front(9))
    assert(my_circular_deque.delete_front)
    assert(my_circular_deque.delete_last)
  end
end
