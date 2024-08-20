# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2220_minimum_bit_flips_to_convert_number'
require 'minitest/autorun'

class MinimumBitFlipsToConvertNumberTest < ::Minitest::Test
  def test_default_one = assert_equal(3, min_bit_flips(10, 7))

  def test_default_two = assert_equal(3, min_bit_flips(3, 4))
end
