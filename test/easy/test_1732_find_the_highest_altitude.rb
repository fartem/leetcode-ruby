# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1732_find_the_highest_altitude'
require 'minitest/autorun'

class FindTheHighestAltitudeTest < ::Minitest::Test
  def test_default
    assert_equal(1, largest_altitude([-5, 1, 5, 0, -7]))
    assert_equal(0, largest_altitude([-4, -3, -2, -1, 4, 3, 2]))
  end
end
