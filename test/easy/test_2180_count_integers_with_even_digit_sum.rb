# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2180_count_integers_with_even_digit_sum'
require 'minitest/autorun'

class CountIntegersWithEvenDigitSumTest < ::Minitest::Test
  def test_default_one = assert_equal(2, count_even(4))

  def test_default_two = assert_equal(14, count_even(30))
end
