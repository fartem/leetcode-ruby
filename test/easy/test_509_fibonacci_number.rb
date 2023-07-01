# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/509_fibonacci_number'
require 'minitest/autorun'

class FibonacciNumberTest < ::Minitest::Test
  def test_default
    assert_equal(1, fib(2))
    assert_equal(2, fib(3))
    assert_equal(3, fib(4))
  end
end
