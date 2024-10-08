# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/29_divide_two_integers'
require 'minitest/autorun'

class DivideTwoIntegersTest < ::Minitest::Test
  def test_default_one = assert_equal(3, divide(10, 3))

  def test_default_two = assert_equal(-2, divide(7, -3))
end
