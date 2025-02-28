# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1670_design_front_middle_back_queue'
require 'minitest/autorun'

class DesignFrontMiddleBackQueueTest < ::Minitest::Test
  def test_default_one
    front_middle_back_queue = ::FrontMiddleBackQueue.new
    front_middle_back_queue.push_front(1)
    front_middle_back_queue.push_back(2)
    front_middle_back_queue.push_middle(3)
    front_middle_back_queue.push_middle(4)

    assert_equal(1, front_middle_back_queue.pop_front)
    assert_equal(3, front_middle_back_queue.pop_middle)
    assert_equal(4, front_middle_back_queue.pop_middle)
    assert_equal(2, front_middle_back_queue.pop_back)
    assert_equal(-1, front_middle_back_queue.pop_front)
  end
end
