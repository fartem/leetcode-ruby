# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2264_largest_3_same_digit_number_in_string'
require 'minitest/autorun'

class Largest3SameDigitNumberInStringTest < ::Minitest::Test
  def test_default_one = assert_equal('777', largest_good_integer('6777133339'))

  def test_default_two = assert_equal('000', largest_good_integer('2300019'))

  def test_default_three = assert_equal('', largest_good_integer('42352338'))
end
