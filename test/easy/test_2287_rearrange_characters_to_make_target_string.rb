# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2287_rearrange_characters_to_make_target_string'
require 'minitest/autorun'

class RearrangeCharactersToMakeTargetStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      rearrange_characters(
        'ilovecodingonleetcode',
        'code'
      )
    )
  end

  def test_default_two
    assert_equal(
      1,
      rearrange_characters(
        'abcba',
        'abc'
      )
    )
  end

  def test_default_three
    assert_equal(
      1,
      rearrange_characters(
        'abbaccaddaeea',
        'aaaaa'
      )
    )
  end
end
