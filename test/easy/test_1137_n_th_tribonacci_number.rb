# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1137_n_th_tribonacci_number'
require 'minitest/autorun'

class NThTribonacciNumberTest < ::Minitest::Test
  def test_default_one = assert_equal(4, tribonacci(4))

  def test_default_two = assert_equal(1_389_537, tribonacci(25))
end
