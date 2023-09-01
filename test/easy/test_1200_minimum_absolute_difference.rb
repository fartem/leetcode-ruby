# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1200_minimum_absolute_difference'
require 'minitest/autorun'

class MinimumAbsoluteDifferenceTest < ::Minitest::Test
  def test_default
    assert_equal(
      [[1, 2], [2, 3], [3, 4]],
      minimum_abs_difference([4, 2, 1, 3])
    )
    assert_equal(
      [[1, 3]],
      minimum_abs_difference([1, 3, 6, 10, 15])
    )
    assert_equal(
      [[-14, -10], [19, 23], [23, 27]],
      minimum_abs_difference([3, 8, -10, 23, 19, -4, -14, 27])
    )
  end
end
