# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/459_repeated_substring_pattern'
require 'minitest/autorun'

class RepeatedSubstringPatternTest < ::Minitest::Test
  def test_default_one = assert(repeated_substring_pattern('abab'))

  def test_default_two = assert(!repeated_substring_pattern('aba'))

  def test_default_three = assert(repeated_substring_pattern('abcabcabcabc'))
end
