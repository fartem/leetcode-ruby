# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/622_design_circular_queue'
require 'minitest/autorun'

class DesignCircularQueueTest < ::Minitest::Test
  def test_default_one
    my_circular_queue = ::MyCircularQueue.new(3)

    assert(my_circular_queue.en_queue(1))
    assert(my_circular_queue.en_queue(2))
    assert(my_circular_queue.en_queue(3))
    assert(!my_circular_queue.en_queue(4))

    assert_equal(3, my_circular_queue.rear)

    assert(my_circular_queue.is_full)
    assert(my_circular_queue.de_queue)
    assert(my_circular_queue.en_queue(4))

    assert_equal(4, my_circular_queue.rear)
  end

  def test_additional_one
    my_circular_queue = ::MyCircularQueue.new(1)

    assert_equal(-1, my_circular_queue.front)

    assert(my_circular_queue.en_queue(2))

    assert_equal(2, my_circular_queue.front)

    assert(my_circular_queue.de_queue)
  end
end
