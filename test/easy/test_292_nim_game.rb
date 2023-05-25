# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/292_nim_game'
require 'minitest/autorun'

class NimGameTest < ::Minitest::Test
  def test_default
    assert(!can_win_nim(4))
    assert(can_win_nim(1))
    assert(can_win_nim(2))
  end
end
