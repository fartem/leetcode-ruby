# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/167_two_sum_ii_input_array_is_sorted'
require 'minitest/autorun'

class TwoSumIIInputArrayIsSortedTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [1, 2],
      two_sum167(
        [2, 7, 11, 15],
        9
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 3],
      two_sum167(
        [2, 3, 4],
        6
      )
    )
  end

  def test_default_three
    assert_equal(
      [1, 2],
      two_sum167(
        [-1, 0],
        -1
      )
    )
  end

  def test_additional_one
    assert_equal(
      [2, 3],
      two_sum167(
        [5, 25, 75],
        100
      )
    )
  end
end
