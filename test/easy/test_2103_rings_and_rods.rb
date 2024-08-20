# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2103_rings_and_rods'
require 'minitest/autorun'

class RingsAndRodsTest < ::Minitest::Test
  def test_default_one = assert_equal(1, count_points('B0B6G0R6R0R6G9'))

  def test_default_two = assert_equal(1, count_points('B0R0G0R9R0B0G0'))

  def test_default_three = assert_equal(0, count_points('G4'))
end
