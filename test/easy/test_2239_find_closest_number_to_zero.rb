# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2239_find_closest_number_to_zero'
require 'minitest/autorun'

class FindClosestNumberToZeroTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      find_closest_number(
        [-4, -2, 1, 4, 8]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      find_closest_number(
        [2, -1, 1]
      )
    )
  end
end
