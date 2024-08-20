# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1323_maximum_69_number'
require 'minitest/autorun'

class Maximum69NumberTest < ::Minitest::Test
  def test_default_one = assert_equal(9969, maximum69_number(9669))

  def test_default_two = assert_equal(9999, maximum69_number(9996))

  def test_default_three = assert_equal(9999, maximum69_number(9999))
end
