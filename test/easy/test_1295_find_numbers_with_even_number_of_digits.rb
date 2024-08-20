# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1295_find_numbers_with_even_number_of_digits'
require 'minitest/autorun'

class FindNumbersWithEvenNumberOfDigitTest < ::Minitest::Test
  def test_default_one = assert_equal(2, find_numbers([12, 345, 2, 6, 7896]))

  def test_default_two = assert_equal(1, find_numbers([555, 901, 482, 1771]))
end
