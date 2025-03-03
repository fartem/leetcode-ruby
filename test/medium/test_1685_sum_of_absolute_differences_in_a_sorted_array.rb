# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1685_sum_of_absolute_differences_in_a_sorted_array'
require 'minitest/autorun'

class SumOfAbsoluteDifferencesInASortedArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [4, 3, 5],
      get_sum_absolute_differences(
        [2, 3, 5]
      )
    )
  end

  def test_default_two
    assert_equal(
      [24, 15, 13, 15, 21],
      get_sum_absolute_differences(
        [1, 4, 6, 8, 10]
      )
    )
  end
end
