# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/338_counting_bits'
require 'minitest/autorun'

class CountingBitsTest < ::Minitest::Test
  def test_default_one = assert_equal([0, 1, 1], count_bits(2))

  def test_default_two = assert_equal([0, 1, 1, 2, 1, 2], count_bits(5))
end
