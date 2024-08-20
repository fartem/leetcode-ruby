# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/191_number_of_1_bits'
require 'minitest/autorun'

class NumberOf1BitsTest < ::Minitest::Test
  def test_default_one = assert_equal(3, hamming_weight(11))

  def test_default_two = assert_equal(1, hamming_weight(128))

  def test_default_three = assert_equal(31, hamming_weight(4_294_967_293))
end
