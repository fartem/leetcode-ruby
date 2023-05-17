# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/232_implement_queue_using_stacks'
require 'minitest/autorun'

class ImplementQueueUsingStacksTest < ::Minitest::Test
  def test_default
    my_queue = ::MyQueue.new
    my_queue.push(1)
    my_queue.push(2)
    assert_equal(1, my_queue.peek)
    assert_equal(1, my_queue.pop)
    assert(!my_queue.empty)
  end
end
