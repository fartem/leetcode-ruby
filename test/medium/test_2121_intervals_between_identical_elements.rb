# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2121_intervals_between_identical_elements'
require 'minitest/autorun'

class IntervalsBetweenIdenticalElementsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [4, 2, 7, 2, 4, 4, 5],
      get_distances(
        [2, 1, 3, 1, 2, 3, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      [5, 0, 3, 4],
      get_distances(
        [10, 5, 10, 10]
      )
    )
  end
end
