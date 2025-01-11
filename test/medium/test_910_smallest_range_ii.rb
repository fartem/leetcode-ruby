# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/910_smallest_range_ii'
require 'minitest/autorun'

class SmallestRangeIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      0,
      smallest_range_ii(
        [1],
        0
      )
    )
  end

  def test_default_two
    assert_equal(
      6,
      smallest_range_ii(
        [0, 10],
        2
      )
    )
  end

  def test_default_three
    assert_equal(
      3,
      smallest_range_ii(
        [1, 3, 6],
        3
      )
    )
  end
end
