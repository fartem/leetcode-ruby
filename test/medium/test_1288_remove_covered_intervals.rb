# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1288_remove_covered_intervals'
require 'minitest/autorun'

class RemoveCoveredIntervalsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      remove_covered_intervals(
        [
          [1, 4],
          [3, 6],
          [2, 8]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      remove_covered_intervals(
        [
          [1, 4],
          [2, 3]
        ]
      )
    )
  end
end
