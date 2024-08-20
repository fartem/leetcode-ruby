# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/5_longest_palindromic_substring'
require 'minitest/autorun'

class LongestPalindromicSubstringTest < ::Minitest::Test
  def test_default_one = assert_equal('bab', longest_palindrome5('babad'))

  def test_default_two = assert_equal('bb', longest_palindrome5('cbbd'))
end
