require_relative '../../lib/easy/9_palindrome_number'
require 'minitest/autorun'

class PalindromeNumberTest < Minitest::Test
  def test_default
    assert is_palindrome(121)
    assert !is_palindrome(-121)
    assert !is_palindrome(10)
  end
end
