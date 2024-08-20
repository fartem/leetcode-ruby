# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/409_longest_palindrome'
require 'minitest/autorun'

class LongestPalindromeTest < ::Minitest::Test
  def test_default_one = assert_equal(7, longest_palindrome('abccccdd'))

  def test_default_two = assert_equal(1, longest_palindrome('a'))
end
