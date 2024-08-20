# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/643_maximum_average_subarray_i'
require 'minitest/autorun'

class MaximumAverageSubarrayITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      12.75000,
      find_max_average(
        [1, 12, -5, -6, 50, 3],
        4
      )
    )
  end

  def test_default_two = assert_equal(5.00000, find_max_average([5], 1))
end
