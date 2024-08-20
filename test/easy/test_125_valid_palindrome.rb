# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/125_valid_palindrome'
require 'minitest/autorun'

class ValidPalindromeTest < ::Minitest::Test
  def test_default_one = assert(is_valid_palindrome('A man, a plan, a canal: Panama'))

  def test_default_two = assert(!is_valid_palindrome('race a car'))

  def test_default_three = assert(is_valid_palindrome(' '))
end
