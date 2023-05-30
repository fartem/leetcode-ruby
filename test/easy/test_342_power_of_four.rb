# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/342_power_of_four'
require 'minitest/autorun'

class PowerOfFourTest < ::Minitest::Test
  def test_default
    assert(is_power_of_four(16))
    assert(!is_power_of_four(5))
    assert(is_power_of_four(1))
  end
end
