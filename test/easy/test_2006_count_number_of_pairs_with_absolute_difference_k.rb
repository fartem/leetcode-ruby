# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2006_count_number_of_pairs_with_absolute_difference_k'
require 'minitest/autorun'

class CountNumberOfPairsWithAbsoluteDifferenceKTest < ::Minitest::Test
  def test_default_one = assert_equal(4, count_k_difference([1, 2, 2, 1], 1))

  def test_default_two = assert_equal(0, count_k_difference([1, 3], 3))

  def test_default_three = assert_equal(3, count_k_difference([3, 2, 1, 5, 4], 2))
end
