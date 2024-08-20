# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/225_implement_stack_using_queues'
require 'minitest/autorun'

class ImplementStackUsingQueuesTest < ::Minitest::Test
  def test_default_one
    my_stack = ::MyStack.new
    my_stack.push(1)
    my_stack.push(2)

    assert_equal(2, my_stack.top)
    assert_equal(2, my_stack.pop)
    assert(!my_stack.empty)
  end
end
