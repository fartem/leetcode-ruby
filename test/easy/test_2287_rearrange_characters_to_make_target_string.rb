# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2287_rearrange_characters_to_make_target_string'
require 'minitest/autorun'

class RearrangeCharactersToMakeTargetStringTest < ::Minitest::Test
  def test_default
    assert_equal(2, rearrange_characters('ilovecodingonleetcode', 'code'))
    assert_equal(1, rearrange_characters('abcba', 'abc'))
    assert_equal(1, rearrange_characters('abbaccaddaeea', 'aaaaa'))
  end
end
