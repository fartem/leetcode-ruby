# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1025_divisor_game'
require 'minitest/autorun'

class DivisorGameTest < ::Minitest::Test
  def test_default_one = assert(divisor_game(2))

  def test_default_two = assert(!divisor_game(3))
end
