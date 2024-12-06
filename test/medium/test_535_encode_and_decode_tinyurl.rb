# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/535_encode_and_decode_tinyurl'
require 'minitest/autorun'

class EncodeAndDecodeTinyURLTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'https://leetcode.com/problems/design-tinyurl',
      decode(
        encode(
          'https://leetcode.com/problems/design-tinyurl'
        )
      )
    )
  end
end
