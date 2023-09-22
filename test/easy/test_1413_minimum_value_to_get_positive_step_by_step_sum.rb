# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1413_minimum_value_to_get_positive_step_by_step_sum'
require 'minitest/autorun'

class MinimumValueToGetPositiveStepByStepSumTest < ::Minitest::Test
  def test_default
    assert_equal(5, min_start_value([-3, 2, -3, 4, 2]))
    assert_equal(1, min_start_value([1, 2]))
    assert_equal(5, min_start_value([1, -2, -3]))
  end
end
