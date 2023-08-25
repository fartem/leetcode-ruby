# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1005_maximize_sum_of_array_after_k_negations'
require 'minitest/autorun'

class MaximizeSumOfArrayAfterKNegationsTest < ::Minitest::Test
  def test_default
    assert_equal(5, largest_sum_after_k_negations([4, 2, 3], 1))
    assert_equal(6, largest_sum_after_k_negations([3, -1, 0, 2], 3))
    assert_equal(13, largest_sum_after_k_negations([2, -3, -1, 5, -4], 2))
  end
end
