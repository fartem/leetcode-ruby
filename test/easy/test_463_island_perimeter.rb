# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/463_island_perimeter'
require 'minitest/autorun'

class IslandPerimeterTest < ::Minitest::Test
  def test_default_one
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
  end

  def test_default_two = assert_equal(4, island_perimeter([[1]]))

  def test_default_three = assert_equal(4, island_perimeter([[1, 0]]))
end
