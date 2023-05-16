# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/231_power_of_two'
require 'minitest/autorun'

class PowerOfTwoTest < ::Minitest::Test
  def test_default
    assert(is_power_of_two(1))
    assert(is_power_of_two(16))
    assert(!is_power_of_two(3))
  end
end
