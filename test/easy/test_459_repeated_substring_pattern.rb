# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/459_repeated_substring_pattern'
require 'minitest/autorun'

class RepeatedSubstringPatternTest < ::Minitest::Test
  def test_default
    assert(repeated_substring_pattern('abab'))
    assert(!repeated_substring_pattern('aba'))
    assert(repeated_substring_pattern('abcabcabcabc'))
  end
end
