# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2243_calculate_digit_sum_of_a_string'
require 'minitest/autorun'

class CalculateDigitSumOfAStringTest < ::Minitest::Test
  def test_default_one = assert_equal('135', digit_sum('11111222223', 3))

  def test_default_two = assert_equal('000', digit_sum('00000000', 3))
end
