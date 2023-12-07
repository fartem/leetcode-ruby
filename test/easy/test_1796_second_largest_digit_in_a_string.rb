# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1796_second_largest_digit_in_a_string'
require 'minitest/autorun'

class SecondLargestDigitInAStringTest < ::Minitest::Test
  def test_default
    assert_equal(2, second_highest('dfa12321afd'))
    assert_equal(-1, second_highest('abc1111'))
  end

  def test_additional
    assert_equal(4, second_highest('sjhtz8344'))
  end
end
