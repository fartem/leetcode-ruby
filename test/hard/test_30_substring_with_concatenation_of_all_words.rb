# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/30_substring_with_concatenation_of_all_words'
require 'minitest/autorun'

class SubstringWithConcatenationOfAllWordsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 9],
      find_substring(
        'barfoothefoobarman',
        %w[foo bar]
      )
    )
  end

  def test_default_two
    assert_equal(
      [],
      find_substring(
        'wordgoodgoodgoodbestword',
        %w[word good best word]
      )
    )
  end

  def test_default_three
    assert_equal(
      [6, 9, 12],
      find_substring(
        'barfoofoobarthefoobarman',
        %w[bar foo the]
      )
    )
  end
end
