# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/680_valid_palindrome_ii'
require 'minitest/autorun'

class ValidPalindromeIITest < ::Minitest::Test
  def test_default
    assert(valid_palindrome_ii('aba'))
    assert(valid_palindrome_ii('abca'))
    assert(!valid_palindrome_ii('abc'))
  end
end
