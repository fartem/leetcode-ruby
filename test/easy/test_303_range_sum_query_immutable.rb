# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/303_range_sum_query_immutable'
require 'minitest/autorun'

class RangeSumQueryImmutableTest < ::Minitest::Test
  def test_default
    num_array = ::NumArray.new([-2, 0, 3, -5, 2, -1])
    assert_equal(1, num_array.sum_range(0, 2))
    assert_equal(-1, num_array.sum_range(2, 5))
    assert_equal(-3, num_array.sum_range(0, 5))
  end
end
