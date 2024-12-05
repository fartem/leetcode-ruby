# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/516_longest_palindromic_subsequence'
require 'minitest/autorun'

class LongestPalindromicSubsequenceTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      longest_palindrome_subseq(
        'bbbab'
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      longest_palindrome_subseq(
        'cbbd'
      )
    )
  end
end
