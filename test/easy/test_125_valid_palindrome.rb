# frozen_string_literal: true

require_relative '../../lib/easy/125_valid_palindrome'
require 'minitest/autorun'

class ValidPalindromeTest < ::Minitest::Test
  def test_default
    assert(is_palindrome('A man, a plan, a canal: Panama'))
    assert(!is_palindrome('race a car'))
    assert(is_palindrome(' '))
  end
end
