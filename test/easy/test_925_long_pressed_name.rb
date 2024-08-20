# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/925_long_pressed_name'
require 'minitest/autorun'

class LongPressedNameTest < ::Minitest::Test
  def test_default_one = assert(is_long_pressed_name('alex', 'aaleex'))

  def test_default_two = assert(!is_long_pressed_name('saeed', 'ssaaedd'))

  def test_additional_one
    assert(
      !is_long_pressed_name(
        'alex',
        'aaleexxxxaaa'
      )
    )
  end
end
