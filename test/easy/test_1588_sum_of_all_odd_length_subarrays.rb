# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1588_sum_of_all_odd_length_subarrays'
require 'minitest/autorun'

class SumOfAllOddLengthSubarraysTest < ::Minitest::Test
  def test_default_one = assert_equal(58, sum_odd_length_subarrays([1, 4, 2, 5, 3]))

  def test_default_two = assert_equal(3, sum_odd_length_subarrays([1, 2]))

  def test_default_three = assert_equal(66, sum_odd_length_subarrays([10, 11, 12]))
end
