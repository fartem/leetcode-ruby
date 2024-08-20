# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2027_minimum_moves_to_convert_string'
require 'minitest/autorun'

class MinimumMovesToConvertStringTest < ::Minitest::Test
  def test_default_one = assert_equal(1, minimum_moves('XXX'))

  def test_default_two = assert_equal(2, minimum_moves('XXOX'))

  def test_default_three = assert_equal(0, minimum_moves('OOOO'))
end
