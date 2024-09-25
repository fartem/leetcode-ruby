# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/204_count_primes'
require 'minitest/autorun'

class CountPrimesTest < ::Minitest::Test
  def test_default_one = assert_equal(4, count_primes(10))

  def test_default_two = assert_equal(0, count_primes(0))

  def test_default_three = assert_equal(0, count_primes(1))
end
