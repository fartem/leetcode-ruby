# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/925_long_pressed_name'
require 'minitest/autorun'

class LongPressedNameTest < ::Minitest::Test
  def test_default
    assert(is_long_pressed_name('alex', 'aaleex'))
    assert(!is_long_pressed_name('saeed', 'ssaaedd'))
  end

  def test_additional
    assert(!is_long_pressed_name('alex', 'aaleexxxxaaa'))
  end
end
