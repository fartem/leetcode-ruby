# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1381_design_a_stack_with_increment_operation'
require 'minitest/autorun'

class DesignAStackWithIncrementOperationTest < ::Minitest::Test
  def test_default_one
    stack = ::CustomStack.new(3)
    stack.push(1)
    stack.push(2)

    assert_equal(2, stack.pop)

    stack.push(2)
    stack.push(3)
    stack.push(4)

    stack.increment(5, 100)
    stack.increment(2, 100)

    assert_equal(103, stack.pop)
    assert_equal(202, stack.pop)
    assert_equal(201, stack.pop)
    assert_equal(-1, stack.pop)
  end
end
