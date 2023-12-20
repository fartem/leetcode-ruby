# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1844_replace_all_digits_with_characters'
require 'minitest/autorun'

class ReplaceAllDigitsWithCharactersTest < ::Minitest::Test
  def test_default
    assert_equal('abcdef', replace_digits('a1c1e1'))
    assert_equal('abbdcfdhe', replace_digits('a1b2c3d4e'))
  end
end
