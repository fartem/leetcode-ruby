# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2103_rings_and_rods'
require 'minitest/autorun'

class RingsAndRodsTest < ::Minitest::Test
  def test_default
    assert_equal(1, count_points('B0B6G0R6R0R6G9'))
    assert_equal(1, count_points('B0R0G0R9R0B0G0'))
    assert_equal(0, count_points('G4'))
  end
end
