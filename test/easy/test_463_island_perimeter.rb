# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/463_island_perimeter'
require 'minitest/autorun'

class IslandPerimeterTest < ::Minitest::Test
  def test_default
    assert_equal(
      16,
      island_perimeter(
        [
          [0, 1, 0, 0],
          [1, 1, 1, 0],
          [0, 1, 0, 0],
          [1, 1, 0, 0]
        ]
      )
    )
    assert_equal(4, island_perimeter([[1]]))
    assert_equal(4, island_perimeter([[1, 0]]))
  end
end
