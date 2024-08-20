# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2413_smallest_even_multiple'
require 'minitest/autorun'

class SmallestEvenMultipleTest < ::Minitest::Test
  def test_default_one = assert_equal(10, smallest_even_multiple(5))

  def test_default_two = assert_equal(6, smallest_even_multiple(6))
end
