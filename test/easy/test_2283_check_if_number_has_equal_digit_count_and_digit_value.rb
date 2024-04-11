# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2283_check_if_number_has_equal_digit_count_and_digit_value'
require 'minitest/autorun'

class CheckIfNumberHasEqualDigitCountAndDigitValueTest < ::Minitest::Test
  def test_default
    assert(digit_count('1210'))
    assert(!digit_count('030'))
  end
end
