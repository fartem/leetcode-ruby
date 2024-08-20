# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/292_nim_game'
require 'minitest/autorun'

class NimGameTest < ::Minitest::Test
  def test_default_one = assert(!can_win_nim(4))

  def test_default_two = assert(can_win_nim(1))

  def test_default_three = assert(can_win_nim(2))
end
