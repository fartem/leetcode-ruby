# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2520_count_the_digits_that_divide_a_number'
require 'minitest/autorun'

class CountTheDigitsThatDivideANumberTest < ::Minitest::Test
  def test_default
    assert_equal(1, count_digits(7))
    assert_equal(2, count_digits(121))
    assert_equal(4, count_digits(1248))
  end
end
