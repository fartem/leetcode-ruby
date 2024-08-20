# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2037_minimum_number_of_moves_to_seat_everyone'
require 'minitest/autorun'

class MinimumNumberOfMovesToSeatEveryoneTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      min_moves_to_seat(
        [3, 1, 5],
        [2, 7, 4]
      )
    )
  end

  def test_default_two
    assert_equal(
      7,
      min_moves_to_seat(
        [4, 1, 5, 9],
        [1, 3, 2, 6]
      )
    )
  end

  def test_default_three
    assert_equal(
      4,
      min_moves_to_seat(
        [2, 2, 6, 6],
        [1, 3, 2, 6]
      )
    )
  end
end
