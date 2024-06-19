# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2544_alternating_digit_sum'
require 'minitest/autorun'

class AlternatingDigitSumTest < ::Minitest::Test
  def test_default
    assert_equal(4, alternate_digit_sum(521))
    assert_equal(1, alternate_digit_sum(111))
    assert_equal(0, alternate_digit_sum(886_996))
  end
end
