# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/233_number_of_digit_one'
require 'minitest/autorun'

class NumberOfDigitOneTest < ::Minitest::Test
  def test_default_one = assert_equal(6, count_digit_one(13))

  def test_default_two = assert_equal(0, count_digit_one(0))
end
