# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/693_binary_number_with_alternating_bits'
require 'minitest/autorun'

class BinaryNumberWithAlternatingBitsTest < ::Minitest::Test
  def test_default_one = assert(has_alternating_bits(5))

  def test_default_two = assert(!has_alternating_bits(7))

  def test_default_three = assert(!has_alternating_bits(11))
end
