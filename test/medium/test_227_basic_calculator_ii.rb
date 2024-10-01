# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/227_basic_calculator_ii'
require 'minitest/autorun'

class BasicCalculatorIITest < ::Minitest::Test
  def test_default_one = assert_equal(7, calculate('3+2*2'))

  def test_default_two = assert_equal(1, calculate(' 3/2 '))

  def test_default_three = assert_equal(5, calculate(' 3+5 / 2 '))

  def test_additional_one = assert_equal(1, calculate('2-1'))
end
