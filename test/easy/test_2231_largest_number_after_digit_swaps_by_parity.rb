# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2231_largest_number_after_digit_swaps_by_parity'
require 'minitest/autorun'

class LargestNumberAfterDigitSwapsByParityTest < ::Minitest::Test
  def test_default
    assert_equal(3412, largest_integer(1234))
    assert_equal(87_655, largest_integer(65_875))
  end
end
