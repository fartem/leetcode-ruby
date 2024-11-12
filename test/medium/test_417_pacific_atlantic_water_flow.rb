# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/417_pacific_atlantic_water_flow'
require 'minitest/autorun'

class PacificAtlanticWaterFlowTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [0, 4],
        [1, 3],
        [1, 4],
        [2, 2],
        [3, 0],
        [3, 1],
        [4, 0]
      ],
      pacific_atlantic(
        [
          [1, 2, 2, 3, 5],
          [3, 2, 3, 4, 4],
          [2, 4, 5, 3, 1],
          [6, 7, 1, 4, 5],
          [5, 1, 1, 2, 4]
        ]
      )
    )
  end

  def test_default_two
    assert_equal(
      [[0, 0]],
      pacific_atlantic(
        [[1]]
      )
    )
  end
end
