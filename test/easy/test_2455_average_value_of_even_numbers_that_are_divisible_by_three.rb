# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2455_average_value_of_even_numbers_that_are_divisible_by_three'
require 'minitest/autorun'

class AverageValueOfEvenNumbersThatAreDivisibleByThreeTest < ::Minitest::Test
  def test_default_one = assert_equal(9, average_value([1, 3, 6, 10, 12, 15]))

  def test_default_two = assert_equal(0, average_value([1, 2, 4, 7, 10]))
end
