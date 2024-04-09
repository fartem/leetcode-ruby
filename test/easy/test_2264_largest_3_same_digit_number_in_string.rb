# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2264_largest_3_same_digit_number_in_string'
require 'minitest/autorun'

class Largest3SameDigitNumberInStringTest < ::Minitest::Test
  def test_default
    assert_equal('777', largest_good_integer('6777133339'))
    assert_equal('000', largest_good_integer('2300019'))
    assert_equal('', largest_good_integer('42352338'))
  end
end
