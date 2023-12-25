# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1863_sum_of_all_subset_xor_totals'
require 'minitest/autorun'

class SumOfAllSubsetXORTotalsTest < ::Minitest::Test
  def test_default
    assert_equal(6, subset_xor_sum([1, 3]))
    assert_equal(28, subset_xor_sum([5, 1, 6]))
    assert_equal(480, subset_xor_sum([3, 4, 5, 6, 7, 8]))
  end
end
