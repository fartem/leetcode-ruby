# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1232_check_if_it_is_a_straight_line'
require 'minitest/autorun'

class CheckIfItIsAStraightLineTest < ::Minitest::Test
  def test_default_one
    assert(
      check_straight_line(
        [
          [1, 2],
          [2, 3],
          [3, 4],
          [4, 5],
          [5, 6],
          [6, 7]
        ]
      )
    )
  end

  def test_default_two
    assert(
      !check_straight_line(
        [
          [1, 1],
          [2, 2],
          [3, 4],
          [4, 5],
          [5, 6],
          [7, 7]
        ]
      )
    )
  end
end
