# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1518_water_bottles'
require 'minitest/autorun'

class WaterBottlesTest < ::Minitest::Test
  def test_default_one = assert_equal(13, num_water_bottles(9, 3))

  def test_default_two = assert_equal(19, num_water_bottles(15, 4))
end
