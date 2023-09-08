# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1317_convert_integer_to_the_sum_of_two_no_zero_integers'
require 'minitest/autorun'

class ConvertIntegerToTheSumOfTwoNoZerosIntegersTest < ::Minitest::Test
  def test_default
    assert_equal([1, 1], get_no_zero_integers(2))
    assert_equal([2, 9], get_no_zero_integers(11))
  end
end
