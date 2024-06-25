# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/5_longest_palindromic_substring'
require 'minitest/autorun'

class LongestPalindromicSubstringTest < ::Minitest::Test
  def test_default
    assert_equal('bab', longest_palindrome5('babad'))
    assert_equal('bb', longest_palindrome5('cbbd'))
  end
end
