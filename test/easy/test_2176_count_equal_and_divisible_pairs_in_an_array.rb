# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2176_count_equal_and_divisible_pairs_in_an_array'
require 'minitest/autorun'

class CountEqualAndDivisiblePairsInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      count_pairs(
        [3, 1, 2, 2, 2, 1, 3],
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      count_pairs(
        [1, 2, 3, 4],
        1
      )
    )
  end
end
