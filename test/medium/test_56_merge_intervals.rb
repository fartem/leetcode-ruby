# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/56_merge_intervals'
require 'minitest/autorun'

class MergeIntervalsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [1, 6],
        [8, 10],
        [15, 18]
      ],
      merge56(
        [
          [1, 3],
          [2, 6],
          [8, 10],
          [15, 18]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [1, 5]
      ],
      merge56(
        [
          [1, 4],
          [4, 5]
        ]
      )
    )
  end
end
