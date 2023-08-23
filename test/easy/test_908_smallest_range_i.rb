# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/908_smallest_range_i'
require 'minitest/autorun'

class SmallestRangeTest < ::Minitest::Test
  def test_default
    assert_equal(0, smallest_range_i([1], 0))
    assert_equal(6, smallest_range_i([0, 10], 2))
    assert_equal(0, smallest_range_i([1, 3, 6], 3))
  end
end
