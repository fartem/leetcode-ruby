# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/717_1_bit_and_2_bit_characters'
require 'minitest/autorun'

class OneBitTwoBitCharactersTest < ::Minitest::Test
  def test_default
    assert(is_one_bit_character([1, 0, 0]))
    assert(!is_one_bit_character([1, 1, 1, 0]))
  end
end
