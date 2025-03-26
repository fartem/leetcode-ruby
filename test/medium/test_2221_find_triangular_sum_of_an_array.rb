# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2221_find_triangular_sum_of_an_array'
require 'minitest/autorun'

class FindTriangularSumOfAnArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      8,
      triangular_sum(
        [1, 2, 3, 4, 5]
      )
    )
  end

  def test_default_two
    assert_equal(
      5,
      triangular_sum(
        [5]
      )
    )
  end
end
