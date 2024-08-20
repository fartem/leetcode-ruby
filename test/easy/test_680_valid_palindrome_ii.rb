# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/680_valid_palindrome_ii'
require 'minitest/autorun'

class ValidPalindromeIITest < ::Minitest::Test
  def test_default_one = assert(valid_palindrome_ii('aba'))

  def test_default_two = assert(valid_palindrome_ii('abca'))

  def test_default_three = assert(!valid_palindrome_ii('abc'))
end
