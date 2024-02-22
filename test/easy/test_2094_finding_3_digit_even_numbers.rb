# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2094_finding_3_digit_even_numbers'
require 'minitest/autorun'

class Finding3DigitEvenNumbersTest < ::Minitest::Test
  def test_default
    assert_equal([102, 120, 130, 132, 210, 230, 302, 310, 312, 320], find_even_numbers([2, 1, 3, 0]))
    assert_equal([222, 228, 282, 288, 822, 828, 882], find_even_numbers([2, 2, 8, 8, 2]))
    assert_equal([], find_even_numbers([3, 7, 5]))
  end
end
