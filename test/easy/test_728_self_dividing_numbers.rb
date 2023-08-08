# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/728_self_dividing_numbers'
require 'minitest/autorun'

class SelfDividingNumbersTest < ::Minitest::Test
  def test_default
    assert_equal(
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22],
      self_dividing_numbers(1, 22)
    )
    assert_equal(
      [48, 55, 66, 77],
      self_dividing_numbers(47, 85)
    )
  end
end
