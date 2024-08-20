# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/8_string_to_integer_atoi'
require 'minitest/autorun'

class StringToIntegerAtoiTest < ::Minitest::Test
  def test_default_one = assert_equal(42, my_atoi('42'))

  def test_default_two = assert_equal(-42, my_atoi('-042'))

  def test_default_three = assert_equal(1337, my_atoi('1337c0d3'))
end
