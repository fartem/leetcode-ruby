# frozen_string_literal: true

require_relative '../../lib/easy/70_climbing_stairs'
require 'minitest/autorun'

class ClimbingStairsTest < ::Minitest::Test
  def test_default
    assert_equal(2, climb_stairs(2))
    assert_equal(3, climb_stairs(3))
  end
end
