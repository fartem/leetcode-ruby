# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1814_count_nice_pairs_in_an_array'
require 'minitest/autorun'

class CountNicePairsInAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      count_nice_pairs(
        [42, 11, 1, 97]
      )
    )
  end

  def test_default_two
    assert_equal(
      4,
      count_nice_pairs(
        [13, 10, 35, 24, 76]
      )
    )
  end
end
