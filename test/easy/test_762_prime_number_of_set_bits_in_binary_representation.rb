# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/762_prime_number_of_set_bits_in_binary_representation'
require 'minitest/autorun'

class PrimeNumberOfSetBitsInBinaryRepresentationTest < ::Minitest::Test
  def test_default_one = assert_equal(4, count_prime_set_bits(6, 10))

  def test_default_two = assert_equal(5, count_prime_set_bits(10, 15))
end
