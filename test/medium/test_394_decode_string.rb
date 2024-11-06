# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/394_decode_string'
require 'minitest/autorun'

class DecodeStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'aaabcbc',
      decode_string(
        '3[a]2[bc]'
      )
    )
  end

  def test_default_two
    assert_equal(
      'accaccacc',
      decode_string(
        '3[a2[c]]'
      )
    )
  end

  def test_default_three
    assert_equal(
      'abcabccdcdcdef',
      decode_string(
        '2[abc]3[cd]ef'
      )
    )
  end
end
