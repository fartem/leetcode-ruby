# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2062_count_vowel_substrings_of_a_string'
require 'minitest/autorun'

class CountVowelSubstringsOfAStringTest < ::Minitest::Test
  def test_default
    assert_equal(2, count_vowel_substrings('aeiouu'))
    assert_equal(0, count_vowel_substrings('unicornarihan'))
    assert_equal(7, count_vowel_substrings('cuaieuouac'))
  end
end
