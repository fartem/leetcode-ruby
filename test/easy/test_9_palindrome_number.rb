# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/9_palindrome_number'
require 'minitest/autorun'

class PalindromeNumberTest < ::Minitest::Test
  def test_default_one = assert(is_palindrome(121))

  def test_default_two = assert(!is_palindrome(-121))

  def test_default_three = assert(!is_palindrome(10))
end
