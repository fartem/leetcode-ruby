# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/231_power_of_two'
require 'minitest/autorun'

class PowerOfTwoTest < ::Minitest::Test
  def test_default_one = assert(is_power_of_two(1))

  def test_default_two = assert(is_power_of_two(16))

  def test_default_three = assert(!is_power_of_two(3))
end
