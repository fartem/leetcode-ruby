# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/869_reordered_power_of_2'
require 'minitest/autorun'

class ReorderedPowerOf2Test < ::Minitest::Test
  def test_default_one = assert(reordered_power_of2(1))

  def test_default_two = assert(!reordered_power_of2(10))
end
