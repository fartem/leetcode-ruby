# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2108_find_first_palindromic_string_in_the_array'
require 'minitest/autorun'

class FindFirstPalindromicStringInTheArrayTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'ada',
      first_palindrome(
        %w[abc car ada racecar cool]
      )
    )
  end

  def test_default_two
    assert_equal(
      'racecar',
      first_palindrome(
        %w[notapalindrome racecar]
      )
    )
  end

  def test_default_three
    assert_equal(
      '',
      first_palindrome(
        %w[def ghi]
      )
    )
  end
end
