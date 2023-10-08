# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1518_water_bottles'
require 'minitest/autorun'

class WaterBottlesTest < ::Minitest::Test
  def test_default
    assert_equal(13, num_water_bottles(9, 3))
    assert_equal(19, num_water_bottles(15, 4))
  end
end
