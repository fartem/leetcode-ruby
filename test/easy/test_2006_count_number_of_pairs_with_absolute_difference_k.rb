# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2006_count_number_of_pairs_with_absolute_difference_k'
require 'minitest/autorun'

class CountNumberOfPairsWithAbsoluteDifferenceKTest < ::Minitest::Test
  def test_default
    assert_equal(4, count_k_difference([1, 2, 2, 1], 1))
    assert_equal(0, count_k_difference([1, 3], 3))
    assert_equal(3, count_k_difference([3, 2, 1, 5, 4], 2))
  end
end
