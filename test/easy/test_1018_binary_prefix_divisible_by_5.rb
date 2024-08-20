# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1018_binary_prefix_divisible_by_5'
require 'minitest/autorun'

class BinaryPrefixDivisibleBy5Test < ::Minitest::Test
  def test_default_one = assert_equal([true, false, false], prefixes_div_by5([0, 1, 1]))

  def test_default_two = assert_equal([false, false, false], prefixes_div_by5([1, 1, 1]))
end
