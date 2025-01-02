# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/852_peak_index_in_a_mountain_array'
require 'minitest/autorun'

class PeakIndexInAMountainArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      peak_index_in_mountain_array(
        [0, 1, 0]
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      peak_index_in_mountain_array(
        [0, 2, 1, 0]
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      peak_index_in_mountain_array(
        [0, 10, 5, 2]
      )
    )
  end
end
