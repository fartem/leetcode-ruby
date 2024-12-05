# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/523_continuous_subarray_sum'
require 'minitest/autorun'

class ContinuousSubarraySumTest < ::Minitest::Test
  def test_default_one
    assert(
      check_subarray_sum(
        [23, 2, 4, 6, 7],
        6
      )
    )
  end

  def test_default_two
    assert(
      check_subarray_sum(
        [23, 2, 6, 4, 7],
        6
      )
    )
  end

  def test_default_three
    assert(
      !check_subarray_sum(
        [23, 2, 6, 4, 7],
        13
      )
    )
  end
end
