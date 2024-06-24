# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/3_longest_substring_without_repeating_characters'
require 'minitest/autorun'

class LongestSubstringWithoutRepeatingCharactersTest < ::Minitest::Test
  def test_default
    assert_equal(3, length_of_longest_substring('abcabcbb'))
    assert_equal(1, length_of_longest_substring('bbbbb'))
    assert_equal(3, length_of_longest_substring('pwwkew'))
  end
end
