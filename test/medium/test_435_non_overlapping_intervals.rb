# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/435_non_overlapping_intervals'
require 'minitest/autorun'

class NonOverlappingIntervalsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      erase_overlap_intervals(
        [
          [1, 2],
          [2, 3],
          [3, 4],
          [1, 3]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      erase_overlap_intervals(
        [
          [1, 2],
          [1, 2],
          [1, 2]
        ]
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      erase_overlap_intervals(
        [
          [1, 2],
          [2, 3]
        ]
      )
    )
  end
end
