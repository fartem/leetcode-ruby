# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2485_find_the_pivot_integer'
require 'minitest/autorun'

class FindThePivotIntegerTest < ::Minitest::Test
  def test_default
    assert_equal(6, pivot_integer(8))
    assert_equal(1, pivot_integer(1))
    assert_equal(-1, pivot_integer(4))
  end
end
