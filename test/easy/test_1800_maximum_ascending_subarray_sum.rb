# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1800_maximum_ascending_subarray_sum'
require 'minitest/autorun'

class MaximumAscendingSubarraySumTest < ::Minitest::Test
  def test_default
    assert_equal(65, max_ascending_sum([10, 20, 30, 5, 10, 50]))
    assert_equal(150, max_ascending_sum([10, 20, 30, 40, 50]))
    assert_equal(33, max_ascending_sum([12, 17, 15, 13, 10, 11, 12]))
  end
end
