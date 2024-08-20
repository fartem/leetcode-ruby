# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1332_remove_palindromic_subsequences'
require 'minitest/autorun'

class RemovePalindromicSubsequencesTest < ::Minitest::Test
  def test_default_one = assert_equal(1, remove_palindrome_sub('ababa'))

  def test_default_two = assert_equal(2, remove_palindrome_sub('abb'))

  def test_default_three = assert_equal(2, remove_palindrome_sub('baabb'))
end
