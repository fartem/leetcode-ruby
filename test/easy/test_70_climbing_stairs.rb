# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/70_climbing_stairs'
require 'minitest/autorun'

class ClimbingStairsTest < ::Minitest::Test
  def test_default_one = assert_equal(2, climb_stairs(2))

  def test_default_two = assert_equal(3, climb_stairs(3))
end
