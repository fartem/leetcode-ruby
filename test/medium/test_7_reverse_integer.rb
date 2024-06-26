# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/7_reverse_integer'
require 'minitest/autorun'

class ReverseIntegerTest < ::Minitest::Test
  def test_default
    assert_equal(321, reverse7(123))
    assert_equal(-321, reverse7(-123))
    assert_equal(21, reverse7(120))
  end

  def test_additional
    assert_equal(0, reverse7(2**31))
  end
end
