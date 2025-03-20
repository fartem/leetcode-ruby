# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/2131_longest_palindrome_by_concatenating_two_letter_words'
require 'minitest/autorun'

class LongestPalindromeByConcatenatingTwoLetterWordsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      6,
      longest_palindrome2131(
        %w[lc cl gg]
      )
    )
  end

  def test_default_two
    assert_equal(
      8,
      longest_palindrome2131(
        %w[ab ty yt lc cl ab]
      )
    )
  end

  def test_default_three
    assert_equal(
      2,
      longest_palindrome2131(
        %w[cc ll xx]
      )
    )
  end
end
