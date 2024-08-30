# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/155_min_stack'
require 'minitest/autorun'

class MinStackTest < ::Minitest::Test
  def test_default_one
    min_stack = ::MinStack.new
    min_stack.push(-2)
    min_stack.push(0)
    min_stack.push(-3)

    assert_equal(-3, min_stack.get_min)

    min_stack.pop

    assert_equal(0, min_stack.top)
    assert_equal(-2, min_stack.get_min)
  end
end
