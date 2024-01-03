# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1903_largest_odd_number_in_string'
require 'minitest/autorun'

class LargestOddNumberInStringTest < ::Minitest::Test
  def test_default
    assert_equal('5', largest_odd_number('52'))
    assert_equal('', largest_odd_number('4206'))
    assert_equal('35427', largest_odd_number('35427'))
  end
end
