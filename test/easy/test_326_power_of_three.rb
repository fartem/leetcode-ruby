# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/326_power_of_three'
require 'minitest/autorun'

class PowerOfThreeTest < ::Minitest::Test
  def test_default_one = assert(is_power_of_three(27))

  def test_default_two = assert(!is_power_of_three(0))

  def test_default_three = assert(!is_power_of_three(-1))
end
