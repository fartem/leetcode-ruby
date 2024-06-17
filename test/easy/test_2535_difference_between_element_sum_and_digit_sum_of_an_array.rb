# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2535_difference_between_element_sum_and_digit_sum_of_an_array'
require 'minitest/autorun'

class DifferenceBetweenElementSumAndDigitSumOfAnArrayTest < ::Minitest::Test
  def test_default
    assert_equal(9, difference_of_sum([1, 15, 6, 3]))
    assert_equal(0, difference_of_sum([1, 2, 3, 4]))
  end
end
