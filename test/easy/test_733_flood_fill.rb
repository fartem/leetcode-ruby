# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/733_flood_fill'
require 'minitest/autorun'

class FloodFillTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [
        [2, 2, 2],
        [2, 2, 0],
        [2, 0, 1]
      ],
      flood_fill(
        [
          [1, 1, 1],
          [1, 1, 0],
          [1, 0, 1]
        ],
        1,
        1,
        2
      )
    )
  end

  def test_default_two
    assert_equal(
      [
        [0, 0, 0],
        [0, 0, 0]
      ],
      flood_fill(
        [
          [0, 0, 0],
          [0, 0, 0]
        ],
        0,
        0,
        0
      )
    )
  end
end
