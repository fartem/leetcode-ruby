# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/400_nth_digit'
require 'minitest/autorun'

class NthDigitTest < ::Minitest::Test
  def test_default_one = assert_equal(3, find_nth_digit(3))

  def test_default_two = assert_equal(0, find_nth_digit(11))
end
