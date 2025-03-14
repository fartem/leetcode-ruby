# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2091_removing_minimum_and_maximum_from_array'
require 'minitest/autorun'

class RemovingMinimumAndMaximumFromArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      5,
      minimum_deletions(
        [2, 10, 7, 5, 4, 1, 8, 6]
      )
    )
  end

  def test_default_two
    assert_equal(
      3,
      minimum_deletions(
        [0, -4, 19, 1, 8, -2, -3, 5]
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      minimum_deletions(
        [101]
      )
    )
  end
end
