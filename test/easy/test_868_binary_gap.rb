# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/868_binary_gap'
require 'minitest/autorun'

class BinaryGapTest < ::Minitest::Test
  def test_default_one = assert_equal(2, binary_gap(22))

  def test_default_two = assert_equal(0, binary_gap(8))

  def test_default_three = assert_equal(2, binary_gap(5))
end
