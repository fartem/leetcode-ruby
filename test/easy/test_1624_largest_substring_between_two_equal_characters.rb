# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1624_largest_substring_between_two_equal_characters'
require 'minitest/autorun'

class LargestSubstringBetweenTwoEqualCharactersTest < ::Minitest::Test
  def test_default
    assert_equal(0, max_length_between_equal_characters('aa'))
    assert_equal(2, max_length_between_equal_characters('abca'))
    assert_equal(-1, max_length_between_equal_characters('cbzxy'))
  end
end
