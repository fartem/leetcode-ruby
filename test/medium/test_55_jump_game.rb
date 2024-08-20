# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/55_jump_game'
require 'minitest/autorun'

class JumpGameTest < ::Minitest::Test
  def test_default_one = assert(can_jump([2, 3, 1, 1, 4]))

  def test_default_two = assert(!can_jump([3, 2, 1, 0, 4]))
end
