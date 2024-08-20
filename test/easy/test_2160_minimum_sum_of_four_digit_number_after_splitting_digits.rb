# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2160_minimum_sum_of_four_digit_number_after_splitting_digits'
require 'minitest/autorun'

class MinimumSumOfFourDigitNumberAfterSplittingDigitsTest < ::Minitest::Test
  def test_default_one = assert_equal(52, minimum_sum(2932))

  def test_default_two = assert_equal(13, minimum_sum(4009))
end
