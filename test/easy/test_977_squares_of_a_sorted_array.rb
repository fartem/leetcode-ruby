# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/977_squares_of_a_sorted_array'
require 'minitest/autorun'

class SquaresOfASortedArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 1, 9, 16, 100],
      sorted_squares(
        [-4, -1, 0, 3, 10]
      )
    )
  end

  def test_default_two
    assert_equal(
      [4, 9, 9, 49, 121],
      sorted_squares(
        [-7, -3, 2, 3, 11]
      )
    )
  end
end
