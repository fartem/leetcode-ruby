# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1903_largest_odd_number_in_string'
require 'minitest/autorun'

class LargestOddNumberInStringTest < ::Minitest::Test
  def test_default_one = assert_equal('5', largest_odd_number('52'))

  def test_default_two = assert_equal('', largest_odd_number('4206'))

  def test_default_three = assert_equal('35427', largest_odd_number('35427'))
end
