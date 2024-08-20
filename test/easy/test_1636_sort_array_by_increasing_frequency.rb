# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1636_sort_array_by_increasing_frequency'
require 'minitest/autorun'

class SortArrayByIncreasingFrequencyTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [3, 1, 1, 2, 2, 2],
      frequency_sort(
        [1, 1, 2, 2, 2, 3]
      )
    )
  end

  def test_default_two
    assert_equal(
      [1, 3, 3, 2, 2],
      frequency_sort(
        [2, 3, 1, 3, 2]
      )
    )
  end

  def test_default_three
    assert_equal(
      [5, -1, 4, 4, -6, -6, 1, 1, 1],
      frequency_sort(
        [-1, 1, -6, 4, 5, -6, 1, 4, 1]
      )
    )
  end
end
