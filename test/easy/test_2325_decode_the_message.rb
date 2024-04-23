# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2325_decode_the_message'
require 'minitest/autorun'

class DecodeTheMessageTest < ::Minitest::Test
  def test_default
    assert_equal(
      'this is a secret',
      decode_message(
        'the quick brown fox jumps over the lazy dog',
        'vkbs bs t suepuv'
      )
    )
    assert_equal(
      'the five boxing wizards jump quickly',
      decode_message(
        'eljuxhpwnyrdgtqkviszcfmabo',
        'zwx hnfx lqantp mnoeius ycgk vcnjrdb'
      )
    )
  end
end
