# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1877_minimize_maximum_pair_sum_in_array'
require 'minitest/autorun'

class MinimizeMaximumPairSumInArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      7,
      min_pair_sum(
        [3, 5, 2, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      8,
      min_pair_sum(
        [3, 5, 4, 2, 4, 6]
      )
    )
  end
end
