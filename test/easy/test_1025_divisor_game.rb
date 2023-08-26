# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1025_divisor_game'
require 'minitest/autorun'

class DivisorGameTest < ::Minitest::Test
  def test_default
    assert(divisor_game(2))
    assert(!divisor_game(3))
  end
end
