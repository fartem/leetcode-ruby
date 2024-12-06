# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/524_longest_word_in_dictionary_through_deleting'
require 'minitest/autorun'

class LongestWordInDictionaryThroughDeletingTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'apple',
      find_longest_word(
        'abpcplea',
        %w[ale apple monkey plea]
      )
    )
  end

  def test_default_two
    assert_equal(
      'a',
      find_longest_word(
        'abpcplea',
        %w[a b c]
      )
    )
  end
end
